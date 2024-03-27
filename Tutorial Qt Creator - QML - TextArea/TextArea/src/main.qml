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

        ScrollView {
            Layout.fillWidth: true
            Layout.fillHeight: true

            TextArea {
                id: mytextarea
                selectByKeyboard: true
                selectByMouse: true
                wrapMode: TextArea.WrapAtWordBoundaryOrAnywhere
                font.pointSize: 20
            }

        }

        Button {
            Layout.fillWidth: true
            text: "Clear"
            onClicked: {
                mytextarea.clear();
            }
        }

    }
}
