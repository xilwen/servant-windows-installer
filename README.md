# SERVANT Windows Installer
This program will install SERVANT into Windows.  

## Dependencies
* Inno Setup 5.5.9-unicode
* SERVANT Manager GUI Static-Linked(QT/MinGW) Executable
* vboxWrapper Static-Linked(MSVC) Executable

## How to Build 
Open src/SERVANT-1.0.iss with Inno Setup Compiler 5.59(u),  
and put dependencies listed below in the src folder to compile.  
### VirtualBox-5.1.22-115126-Win.exe  
* Download it from Virtualbox official website.
### servant-manager-gui.exe  
* Build it from xilwen/servant-manager-gui with Static-Linked Qt Kit, or include dlls manually if you do not want to use a static-linked Qt.
### vboxWrapper.exe  
* Build it from xilwen/servant-windows-vboxwrapper. Only Debug profile is tested.
