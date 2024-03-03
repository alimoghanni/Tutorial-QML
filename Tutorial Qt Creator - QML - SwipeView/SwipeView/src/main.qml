import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Swipe View")

    SwipeView {
        id: view
        anchors.fill: parent
        currentIndex: 0

        Item {
            id: firstItem

            Rectangle {
                anchors.fill: parent
                color: 'blue'
            }
        }

        Item {
            id: secondItem

            Rectangle {
                anchors.fill: parent
                color: 'pink'
            }
        }

        Item {
            id: thirdItem

            Rectangle {
                anchors.fill: parent
                color: 'green'

                Text {
                    id: text
                    anchors.centerIn: parent
                    text: qsTr("Agent 47")
                    font.pointSize: 50
                }
            }
        }
    }

    PageIndicator {
        id: indicador

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: view.horizontalCenter
    }
}
