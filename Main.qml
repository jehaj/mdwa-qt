import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("The Most Dangerous Writing App")

    ColumnLayout {
        width: parent.width
        height: parent.height

        TextArea {
            Layout.fillWidth: true
            Layout.fillHeight: true
            id: textArea
            background: Rectangle {
                color: "orange"
            }
        }
    }
}
