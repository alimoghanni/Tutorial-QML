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

        ProgressBar {
            id: progressbar
            Layout.fillWidth: true
            from: slider.from
            to: slider.to
            value: slider.value
        }

        Slider {
            id: slider
            Layout.fillWidth: true
            from: 0
            to: 100
            stepSize: 5
            value: 50
        }

        Text {
            id: text
            Layout.fillWidth: true
            text: slider.value
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}
