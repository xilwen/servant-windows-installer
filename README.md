# SERVANT Windows Installer
This program will install SERVANT into Windows.  

## Dependencies
* Inno Setup 5.5.9-unicode
* SERVANT Manager GUI (QT/MinGW) Executable
* vboxWrapper Static-Linked(MSVC) Executable

## How to Build 
Open src/SERVANT-1.0.iss with Inno Setup Compiler 5.59(u),  
and put dependencies listed below in the src folder to compile.  
### servant-manager-gui.exe  
* Build it from servant-manager-gui (if windeployqt did not run automatically, run it manually), and copy the release folder and all its subfolder to src/servant-manager-gui folder.
### vboxWrapper.exe  
* Build it from xilwen/servant-windows-vboxwrapper. Only Debug build is tested.
