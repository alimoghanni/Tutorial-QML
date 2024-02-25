import QtQuick 2.6
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("ListView")

    Component.onCompleted: {
        var colors = ['orange', 'green', 'yellow', 'cyan', 'blue', 'red'];
        var jx = 0;
        var color_text = 'black';
        for (var ix = 0; ix < 10; ix++){
            if (jx == colors.length) {
                jx = 0;
            }
            if (colors[jx] === 'blue' || colors[jx] === 'green') {
                color_text = 'white';
            } else {
                color_text = 'black';
            }
            myListView.model.append({
                valueText: 'Hi ' + ix,
                colorFont: colors[jx],
                colorText: color_text});
            jx++;
        }
    }

    ListView {
        anchors.fill: parent
        id: myListView
        model: ListModel {}
        spacing: 5
        delegate: Rectangle {
            color: colorFont
            border.color: 'white'
            width: mainWindow.width
            height: mainWindow.height/5
            Text {
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                color: colorText
                font.pointSize: 20
                text: valueText
            }
        }
    }
}
