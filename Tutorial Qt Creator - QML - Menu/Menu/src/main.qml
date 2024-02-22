import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Menu")

    Label {
        id: label
        anchors.centerIn: parent
        text: "Selection of options of Menu"
        font.pointSize: 20
    }

    Button {
        id: fileButton
        text: "File"
        onClicked: menu.open()

        Menu {
            id: menu
            y: fileButton.height

            MenuItem {
                text: "New..."

                onClicked: {
                    label.text = "New Choosen!"
                }
            }
            MenuItem {
                text: "Open..."

                onClicked: {
                    label.text = "Open Choosen!"
                }
            }
            MenuItem {
                text: "Save..."

                onClicked: {
                    label.text = "Save Choosen!"
                }
            }
            MenuItem {
                text: "Quit"

                onClicked: {
                    Qt.quit();
                }
            }
        }
    }

//    MouseArea {
//        anchors.fill: parent
//        acceptedButtons: Qt.LeftButton | Qt.RightButton
//        onClicked: {
//            if (mouse.button === Qt.RightButton)
//                contextMenu.popup()
//        }
//        onPressAndHold: {
//            if (mouse.source === Qt.MouseEventNotSynthesized)
//                contextMenu.popup()
//        }

//        Menu {
//            id: contextMenu
//            MenuItem { text: "Cut" }
//            MenuItem { text: "Copy" }
//            MenuItem { text: "Paste" }
//        }
//    }

//    Menu {
//        Action { text: "Cut" }
//        Action { text: "Copy" }
//        Action { text: "Paste" }

//        MenuSeparator { }

//        Menu {
//            title: "Find/Replace"
//            Action { text: "Find Next" }
//            Action { text: "Find Previous" }
//            Action { text: "Replace" }
//        }
//    }

}
