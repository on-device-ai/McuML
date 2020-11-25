# McuML  
The McuML is a project for the development and build of "TensorFlow Lite for Microcontrollers" applications on Windows OS. The refactored version is on the "master" branch, and the original version is on the "[original](https://github.com/on-device-ai/McuML/tree/original)" branch. Project refactoring is mainly to make the following changes:  
  
1. Integrate all external executable files under the third\_party\_tools directory.  
2. Try to streamline the TensorFlow source code so that it only use for "TensorFlow Lite for Microcontrollers" applications.  
3. The way Python executes "shell" commands has changed. Information will be output in realtime during command execution. 
  
How to run:  

* Click or execute "McuML.bat". If the environment has not been installed, it will be install and setup automatically. Also, you will be required to select the TensorFlow 2.0 version (CPU or GPU) during the installation process.Please choose according to your computer configuration.
* If you want to change McuML to another directory, please execute first "McuML.bat uninstall" to remove the environment.

![201126](https://user-images.githubusercontent.com/44540872/100257680-28feb580-2f81-11eb-8044-dc81a5620948.png)
 
  
