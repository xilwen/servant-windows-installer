#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QObject>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlComponent>
#include <QQmlProperty>

class MainWindow : public QObject
{
    Q_OBJECT
public:
    explicit MainWindow(QObject *ui);
    Q_INVOKABLE void startInstallation();
    Q_INVOKABLE void runProgram();
    Q_INVOKABLE void exitSetup();
signals:

public slots:

private:
    QObject *ui,
    *askToInstallPane,
    *ifNoVBoxPane,
    *loadingPane,
    *installSucceedPane,
    *loadProgressBar
    ;
    std::wstring vBoxVer;
    bool vBoxInstalled = false;
};

#endif // MAINWINDOW_H
