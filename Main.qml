import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Basic
import QtQuick.Effects

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("The Most Dangerous Writing App")

    ColumnLayout {
        width: parent.width
        height: parent.height

        ScrollView {
            Layout.fillWidth: true
            Layout.fillHeight: true

            TextArea {
                id: textArea

                implicitWidth: 300

                wrapMode: TextEdit.Wrap

                textFormat: Text.RichText
                text: "<body style='line-height=6cm'>hello how are you \
hello</body>"

                placeholderTextColor: "#d4d4d4"
                placeholderText: qsTr("Write the next great thing...")

                background: Rectangle {
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "#fffefa"
                    border.color: "green"
                }
            }

            layer.enabled: true
            layer.effect: MultiEffect {
                blurEnabled: true
                blur: 0.2
            }

        }
    }
}
