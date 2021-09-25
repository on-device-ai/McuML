# McuML  
The McuML is a project for the development and build of "TensorFlow Lite for Microcontrollers" applications on Windows OS. The version on the main branch corresponds to the architecture migration of "TensorFlow Lite for Microcontrollers" from tensorflow to tflite-micro, and the building environment is changed from MSYS2 to WSL 1 (such as the [OpenM1 master](https://github.com/on-device-ai/OpenM1) branch method).  
  
### How to run  
* Please install WSL 1 and Ubuntu 18.04, then click or execute "McuML.bat". If the environment has not been installed, it will be install and setup automatically. Also, you will be required to select the TensorFlow 2.4 version (CPU or GPU) during the installation process.  
* If you want to change McuML to another directory, please execute first "McuML.bat uninstall" to remove the environment.  
  
### WSL 1 installation instructions  
Why use WSL 1, please refer to this [article](https://docs.microsoft.com/windows/wsl/compare-versions).  
For further installation information, please refer to Microsoft's official [instructions](https://docs.microsoft.com/windows/wsl/install-manual).  
  
1. Execute at the Windows command prompt:  
   `powershell "start-process -FilePath \"powershell\" -verb runas -ArgumentList \"dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all\""`  
2. Install [Ubuntu 18.04](https://www.microsoft.com/p/ubuntu-1804-lts/9n9tngvndl3q?rtc=1&activetab=pivot:overviewtab)  
3. Install the necessary packages under Ubuntu 18.04:  
   `sudo apt-get update`  
   `sudo apt-get install build-essential`  
   `sudo apt-get install python python-pip python3 python3-pip`  
   `sudo apt-get install git unzip`  
    
When executing McuML, it will prompt the current state of WSL:  
![210918_1](https://user-images.githubusercontent.com/44540872/133890784-dc491ed0-309c-472b-833b-f9e7f54248c9.png)  
  
### Known issues  

1. If you encounter problems when training the hello_world example on Windows, please refer to this [issue](https://github.com/tensorflow/tensorflow/issues/44882)'s solution. The required files are placed in [third\_party\_tools/tensorflow\_issues\_44882](https://github.com/on-device-ai/McuML/tree/main/third_party_tools/tensorflow_issues_44882).  
2. Currently, it only supports deploying to SparkFun Edge, and it will correspond to other development boards in the future.  
  
![210918_2](https://user-images.githubusercontent.com/44540872/133890889-99731668-c543-4657-8a88-4f316515c9ae.png)  