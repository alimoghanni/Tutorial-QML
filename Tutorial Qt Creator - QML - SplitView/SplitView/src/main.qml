import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls 2.0 as C1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    SplitView {
        orientation: Qt.Vertical
        anchors.fill: parent
        Item {
            width: parent.width / 3
            height: parent.height / 3
            Rectangle {
                anchors.fill: parent
                color: 'orange'
            }
        }

        Item {
            width: parent.width / 3
            GridView {
                id: grid
                anchors.fill: parent
                cellWidth: 50
                cellHeight: 50
                model: ListModel {
                    ListElement {
                        mycolor: 'red'
                    }
                    ListElement {
                        mycolor: 'green'
                    }
                    ListElement {
                        mycolor: 'blue'
                    }
                    ListElement {
                        mycolor: 'brown'
                    }
                }
                delegate: Rectangle {
                    color: mycolor
                    width: grid.cellWidth * 0.9
                    height: grid.cellHeight * 0.9
                }

            }
        }

        Item {
            width: parent.width / 3

            Column {
                Repeater {
                    model: ListModel {
                        ListElement {
                            mycolor: 'red'
                        }
                        ListElement {
                            mycolor: 'green'
                        }
                        ListElement {
                            mycolor: 'blue'
                        }
                        ListElement {
                            mycolor: 'brown'
                        }
                    }
                    Rectangle {
                        color: mycolor
                        width: 50
                        height: 50
                    }
                }
            }
        }
    }
}
