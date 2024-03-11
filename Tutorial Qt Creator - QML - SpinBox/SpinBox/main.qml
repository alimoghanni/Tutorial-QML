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
            from: spinbox.from
            to: spinbox.to
            value: spinbox.value
        }

        SpinBox {
            id: spinbox
            Layout.fillWidth: true
            from: 0
            to: 100
            stepSize: 5
            height: 50
        }

        Text {
            id: text
            Layout.fillWidth: true
            text: spinbox.value
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}
