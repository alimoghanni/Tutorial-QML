import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Buttons")

    Row {   // Row, Column
        id : buttonRow
        anchors.centerIn: parent
        spacing: 3

        Button {
            id: button1
            text: 'Button 1'

            onClicked: {
                mainWindow.title = 'Title 1';
            }
        }

        Button {
            id: button2
            text: 'Button 2'

            background: Rectangle {
                implicitWidth: 100
                implicitHeight: 40
                opacity: enabled ? 1 : 0.3
                color: button2.down ? "green" : "lightblue"
            }

            onClicked: {
                mainWindow.title = 'Title 2';
            }
        }

        Button {
            id: button3
            text: 'Button 3'

            onClicked: {
                mainWindow.title = 'Title 3';

                button1.height = 100;
            }
        }

        Button {
            id: button4
            text: 'Exit'

            background: Rectangle {
                color: "chartreuse"
                implicitWidth: 100
                implicitHeight: 40
                border.width: 1
                border.color: "blue"
                radius: 20
            }
            onClicked: {
                Qt.quit();
            }
        }
    }
}
