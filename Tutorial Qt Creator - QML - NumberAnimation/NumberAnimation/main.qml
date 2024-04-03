import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Component.onCompleted: {
        animation1.start();
        animation2.start();
    }


    Rectangle {
        id: myrect
        width: 55
        height: 55
        radius: 10
        color: "red"
        x: 0
        y: 0
    }

    NumberAnimation {
        id: animation1
        target: myrect
        property: "x"
        duration: 2000
        easing.type: Easing.InOutQuad
        from: 0
        to: mainWindow.width - myrect.width
    }

    NumberAnimation {
        id: animation2
        target: myrect
        property: "y"
        duration: 2000
        easing.type: Easing.InOutQuad
        from: 0
        to: mainWindow.height - myrect.height
    }
}
