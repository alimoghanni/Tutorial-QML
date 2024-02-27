import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("GridView")

    Component.onCompleted: {
        var colors = ['orange', 'red', 'green', 'blue', 'gray'];
        var ix;
        var jx;
        var count = 1;
        for (jx = 0; jx < 20; ++jx) {
            for (ix = 0; ix <colors.length; ++ix) {
                gridView.model.append({
                    myColor: colors[ix],
                    myText : count});
                ++count;
            }
        }
    }

    GridView {
        id : gridView

        anchors {
            top: parent.top
            bottom: parent.bottom
            left: parent.left
            right: parent.right
            leftMargin: 20
            rightMargin: 20
        }

        cellWidth: width / 3
        cellHeight: height / 3

        model: ListModel {}

        delegate: Rectangle {
            width: gridView.cellWidth * 0.9
            height: gridView.cellHeight * 0.9
            color: myColor

            Text {
                id: text
                text: myText
                color: 'white'
                font.pointSize: 50
            }
        }
    }
}
