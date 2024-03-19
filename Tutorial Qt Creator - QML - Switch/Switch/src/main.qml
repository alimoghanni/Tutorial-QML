import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        anchors.fill: parent
        Repeater {
            model: ListModel {
                ListElement {
                    mytext: qsTr("Wi-Fi")
                }
                ListElement {
                    mytext: qsTr("Bluetooth")
                }
                ListElement {
                    mytext: qsTr("Other")
                }
            }
            RowLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Label {
                    text: mytext + " = " + myswitch.position
                    font.pointSize: 10
                    horizontalAlignment: Label.AlignHCenter
                    verticalAlignment: Label.AlignVCenter
                }
                Switch {
                    id: myswitch
                    text: mytext
                }
            }
        }
        Text {
            id: text
            text: qsTr("Usage of Switch")
            Layout.fillWidth: true
            font.pointSize: 10
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

}
