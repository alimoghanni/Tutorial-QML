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
            from: dial.from
            to: dial.to
            value: dial.value
        }

        Dial {
            id: dial
            Layout.fillWidth: true
            from: 0
            to: 100
            stepSize: 5
            height: 50
        }

    }
}
