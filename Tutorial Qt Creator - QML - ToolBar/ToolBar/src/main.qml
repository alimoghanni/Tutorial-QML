import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible:true
    width: 480
    height:450

    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
                text: qsTr("‹")
                onClicked: stack.pop()
            }
            Label {
                id: title
                text: "Title"
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
            ToolButton {
                text: qsTr("⋮")
                onClicked: menu.open()
            }
        }
    }

    StackView {
        id: stack
        anchors.fill: parent
    }

    Menu {
        id: menu

        MenuItem {
            text: 'Option 1'

            onClicked: {
                title.text = 'Option 1!'
                stack.push(firstOption)
            }
        }

        MenuItem {
            text: 'Option 2'

            onClicked: {
                title.text = 'Option 2!'
                stack.push(secondOption)
            }
        }

        MenuItem {
            text: 'Option 3'

            onClicked: {
                title.text = 'Option 3!'
                stack.push(thirdOption)
            }
        }

        MenuItem {
            text: 'Close'

            onClicked: {
                Qt.quit()
            }
        }

        Component {
            id: firstOption

            Rectangle {
                anchors.fill: parent
                color: 'lightblue'
            }
        }

        Component {
            id: secondOption

            Rectangle {
                anchors.fill: parent
                color: 'brown'
            }
        }

        Component {
            id: thirdOption

            Rectangle {
                anchors.fill: parent
                color: 'green'
            }
        }
    }

}
