import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Flickable {
        anchors.left: parent.left
        width: 200
        height: 200
        contentWidth: 100
        contentHeight: 100
        onFlickStarted: {
            rect.color = 'Red';
        }
        onFlickEnded:  {
            rect.color = 'blue';
        }

        Rectangle {
            id: rect
            width: 100
            height: 100
            color: 'green'
        }
    }

    Flickable {
        anchors.right: parent.right
        width: 200
        height: 200
        contentWidth: 100
        contentHeight: 100

        Rectangle {
            id: rect2
            x: parent.width
            width: 100
            height: 100
            color: 'yellow'
        }
    }

}
