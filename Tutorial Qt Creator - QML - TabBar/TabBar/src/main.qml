import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TabBar")

    TabBar {
        id: bar
        width: parent.width

        TabButton {
            text: qsTr("Home")
        }

        TabButton {
            text: qsTr("Discover")
        }

        TabButton {
            text: qsTr("Activity")
        }
    }

    StackLayout {
        anchors.fill: parent
        currentIndex: bar.currentIndex

        Item {
            id: homeTab
        }

        Item {
            id: discoverTab

//            Rectangle {
//                color: 'red'
//                anchors.fill: parent
//            }
        }

        Item {
            id: activityTab
        }
    }
}
