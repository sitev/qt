#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QQmlProperty>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QList<QObject*> lst = engine.rootObjects();
    int count = lst.count();
    qDebug() << count;
    if (count == 0) return -1; //Ошибка, выходим из приложения

    QObject *object = lst[0];

    qDebug() << "width: " << QQmlProperty::read(object, "width").toInt();
    qDebug() << "width: " << QQmlProperty::read(object, "title").toString();

    QObject *mainForm = object->findChild<QObject*>("mainForm");
    if (mainForm) {
        QObject *textEdit1 = mainForm->findChild<QObject*>("textEdit1");
        if (textEdit1) {
            qDebug() << "text:" << textEdit1->property("text");
            textEdit1->setProperty("text", "Hello from C++");
        }
        else qDebug() << "textEdit1 == null";
    }
    else qDebug() << "mainForm == null";

    return app.exec();
}
