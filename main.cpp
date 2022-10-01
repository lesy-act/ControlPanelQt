#include <QApplication>
#include <QQmlApplicationEngine>
#include "apiRest.h"
#include <QUrl>
#include <QQmlContext>
#include <QQmlEngine>

int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QApplication app(argc, argv);
    ApiRest restAPI;
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("appBridge",&restAPI);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);
    QQmlContext *ctx = engine.rootContext();
    ctx->setContextProperty("hihi",&restAPI);
    return app.exec();
}
