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

    ColumnLayout {
        anchors.fill: parent

        Text {
            id: text
            Layout.fillWidth: true
            text: combobox.currentText
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        ComboBox {
            id: combobox
            Layout.fillWidth: true
            font.pointSize: 10
            model: ListModel {
                ListElement {
                    text: "Element 1"
                }
                ListElement {
                    text: "Element 2"
                }
                ListElement {
                    text: "Element 3"
                }
                ListElement {
                    text: "Element 4"
                }
                ListElement {
                    text: "Element 5"
                }
            }

        }

    }
}
