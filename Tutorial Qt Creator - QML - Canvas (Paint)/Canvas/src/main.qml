import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15


Window {
    width: 500
    height: 500
    visible: true
    title: qsTr("Paint")

    RowLayout {
        id: bottons
        anchors.horizontalCenter: parent.horizontalCenter
        z: canvas.z + 1

        Button {
            text: 'Clear'

            onClicked: {
                canvas.clear();
            }
        }

        Button {
            text: 'Exit'

            onClicked: {
                Qt.quit();
            }
        }
    }

    Canvas {
        id: canvas
        anchors.fill: parent
        //width: 500
        //height: 500

        property int lastX: 0
        property int lastY: 0

        function clear() {
            var ctx = getContext("2d");
            ctx.reset();
            canvas.requestPaint();
        }

        MouseArea {
            id: area
            anchors.fill: parent

            onPressed: {
                canvas.lastX = mouseX;
                canvas.lastY = mouseY;
            }

            onPositionChanged: {
                canvas.requestPaint();
            }
        }

        onPaint: {
            var ctx = getContext("2d");
            ctx.lineWidth = 5;
            ctx.beginPath();
            ctx.moveTo(lastX, lastY);
            lastX = area.mouseX
            lastY = area.mouseY
            ctx.lineTo(lastX, lastY);
            ctx.stroke();
        }
    }
}
