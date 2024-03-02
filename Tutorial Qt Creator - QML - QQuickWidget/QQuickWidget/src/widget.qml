import QtQuick 2.0

Item {
    width: 600
    height: 600

    Component.onCompleted: {
        listView.model.append({myColor: 'red', myText: 'Red'});
        listView.model.append({myColor: 'blue', myText: 'Blue'});
        listView.model.append({myColor: 'black', myText: 'Black'});
        listView.model.append({myColor: 'green', myText: 'Green'});
        listView.model.append({myColor: 'orange', myText: 'Orange'});
        listView.model.append({myColor: 'yellow', myText: 'Yellow'});
    }

    ListView {
        id: listView
        anchors.fill: parent
        model: ListModel {}
        delegate: Rectangle {
            width: parent.width
            height: 50
            color: myColor
            Text {
                id: text
                anchors.centerIn: parent
                text: myText
                font.pointSize: 15
                color: 'white'
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    mainWidget.printTextColor(myText);
                }
            }
        }
    }

}
