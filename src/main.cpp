#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlComponent>
#include <QQmlContext>
#include "mainwindow.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject* ui = QQmlComponent(&engine, QUrl(QLatin1String("qrc:/main.qml"))).create();

    MainWindow mainWindow(ui);
    engine.rootContext()->setContextProperty("mainWindow", &mainWindow);
    return app.exec();
}
