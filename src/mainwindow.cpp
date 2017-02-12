#include "mainwindow.h"
#include "windowsregistry.h"
#include <thread>

MainWindow::MainWindow(QObject *ui) : QObject(),ui(ui)
{
    askToInstallPane = ui->findChild<QObject*>("askToInstallPane");
    ifNoVBoxPane = ui->findChild<QObject*>("ifNoVBoxPane");
    loadingPane = ui->findChild<QObject*>("loadingPane");
    installSucceedPane = ui->findChild<QObject*>("installSucceedPane");
    loadProgressBar = ui->findChild<QObject*>("loadProgressBar");
    vBoxInstalled = true;
    ifNoVBoxPane->setProperty("visible",false);
    try
    {
        vBoxVer = WindowsRegistry::getData(HKEY_LOCAL_MACHINE, L"SOFTWARE\\Oracle\\VirtualBox", L"Version");
    }
    catch(...)
    {
        ifNoVBoxPane->setProperty("visible", true);
        vBoxInstalled = false;
    }
}

void MainWindow::startInstallation()
{
    askToInstallPane->setProperty("visible", false);
    loadingPane->setProperty("visible", true);
    loadProgressBar->setProperty("value", 0);
    std::this_thread::sleep_for(std::chrono::milliseconds(200));
    QGuiApplication::processEvents();
    if(!vBoxInstalled)
    {
        QGuiApplication::processEvents();
        std::this_thread::sleep_for(std::chrono::milliseconds(200));
        if(static_cast<bool>(GetProcAddress(GetModuleHandle(TEXT("kernel32")), "IsWow64Process")))
        {
            system("msiexec /qn /passive /i %LOCALAPPDATA%\\temp\\SERVANTInstaller\\data\\VirtualBox-5.1.12-r112440-MultiArch_amd64.msi");
        }
        else
        {
            system("msiexec /qn /passive /i %LOCALAPPDATA%\\temp\\SERVANTInstaller\\data\\VirtualBox-5.1.12-r112440-MultiArch_x86.msi");
        }
    }
    loadProgressBar->setProperty("value", 0.8);
    QGuiApplication::processEvents();

    system("%LOCALAPPDATA%\\temp\\SERVANTInstaller\\data\\SERVANT.exe");
    loadProgressBar->setProperty("value", 0.9);
    QGuiApplication::processEvents();
    std::this_thread::sleep_for(std::chrono::milliseconds(200));
    QGuiApplication::processEvents();
    loadingPane->setProperty("visible", false);
    installSucceedPane->setProperty("visible", true);
    QGuiApplication::processEvents();
}

void MainWindow::runProgram()
{
    system("cd %HOMEDRIVE%\\%HOMEPATH%\\SERVANT && start %HOMEDRIVE%\\%HOMEPATH%\\SERVANT\\tmpServantGUI.exe");
    exit(EXIT_SUCCESS);
}

void MainWindow::exitSetup()
{
    exit(EXIT_SUCCESS);
}

