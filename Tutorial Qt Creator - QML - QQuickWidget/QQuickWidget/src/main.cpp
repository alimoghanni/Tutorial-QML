#include "Widget.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Widget mainWidget;
    mainWidget.show();
    return a.exec();
}
