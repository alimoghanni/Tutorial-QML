#include "Widget.h"
#include "ui_Widget.h"
#include <QQmlContext>

Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)
{
    ui->setupUi(this);
    ui->quickWidget->rootContext()->setContextProperty("mainWidget", this);
    ui->quickWidget->setSource(QUrl(QStringLiteral("qrc:/widget.qml")));

}

Widget::~Widget()
{
    delete ui;
}

void Widget::printTextColor(const QString &textColor)
{
    ui->lineEdit->setText(textColor);
}

