import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow  {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    header: Rectangle {
        width: parent.width
        height: 50
        color: 'lightblue'
        Label {
            id : mytitle
            anchors.centerIn: parent
            color: 'red'
            font.pointSize: 20
        }
    }

    ColumnLayout {
        //anchors.fill: parent
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            top: header.bottom
        }
        spacing: 5
        Repeater {
            model: 5
            RowLayout {
                Layout.fillHeight: true
                width: parent.width
                height: 10
                spacing: 6

                Repeater {
                    model: ListModel {
                        ListElement {
                            mytext: 'Button 1'
                        }
                        ListElement {
                            mytext: 'Button 2'
                        }
                        ListElement {
                            mytext: 'Button 3'
                        }
                        ListElement {
                            mytext: 'Button 4'
                        }
                        ListElement {
                            mytext: 'Button 5'
                        }
                    }

                    Button {
                        Layout.fillWidth: true
                        text: mytext
                        onClicked: {
                            mytitle.text = text
                        }
                    }
                }

            }
        }
    }
}
