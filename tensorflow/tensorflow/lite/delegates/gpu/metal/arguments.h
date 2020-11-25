/* Copyright 2020 The TensorFlow Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/
#ifndef TENSORFLOW_LITE_DELEGATES_GPU_METAL_ARGUMENTS_H_
#define TENSORFLOW_LITE_DELEGATES_GPU_METAL_ARGUMENTS_H_

#include <map>
#include <string>

#include "tensorflow/lite/delegates/gpu/common/status.h"
#include "tensorflow/lite/delegates/gpu/common/task/gpu_object_desc.h"

namespace tflite {
namespace gpu {
namespace metal {

class Arguments {
 public:
  Arguments() = default;

  // Move only
  Arguments(Arguments&& args) = default;
  Arguments& operator=(Arguments&& args) = default;
  Arguments(const Arguments&) = delete;
  Arguments& operator=(const Arguments&) = delete;

  void AddFloat(const std::string& name, float value = 0.0f);
  void AddInt(const std::string& name, int value = 0);
  void AddObject(const std::string& name,
                 GPUObjectDescriptorPtr&& descriptor_ptr);

  void ReleaseCPURepresentation();

 private:
  friend class MetalArguments;
  void GetActiveArguments(const std::string& code);

  static constexpr char kArgsPrefix[] = "args.";
  struct IntValue {
    int value;

    // many arguments generated automatically and not used
    // this flag active if argument was used in kernel_code
    // Will be filled after GetActiveArguments call
    bool active = false;
  };
  std::map<std::string, IntValue> int_values_;

  struct FloatValue {
    float value;

    // many arguments generated automatically and not used
    // this flag active if argument was used in kernel_code
    // Will be filled after GetActiveArguments call
    bool active = false;
  };
  std::map<std::string, FloatValue> float_values_;

  std::map<std::string, GPUObjectDescriptorPtr> objects_;
};

class ArgumentsSetter {
 public:
  virtual absl::Status SetInt(const std::string& name, int value) = 0;
  virtual absl::Status SetFloat(const std::string& name, float value) = 0;
  virtual ~ArgumentsSetter() = default;
};

}  // namespace metal
}  // namespace gpu
}  // namespace tflite

#endif  // TENSORFLOW_LITE_DELEGATES_GPU_METAL_ARGUMENTS_H_
