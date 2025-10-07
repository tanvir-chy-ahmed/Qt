import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "QML SplitView Example"

    SplitView {
        anchors.fill: parent
        orientation: Qt.Horizontal

        Rectangle {
            color: "#FFA500"
           width:  200   // Important: use Layout.preferredWidth

            Text {
                anchors.centerIn: parent
                text: "Left Panel"
                color: "white"
            }
        }

        Rectangle {
            color: "#1E90FF"
            width:  200   // Important: use Layout.preferredWidth

            Text {
                anchors.centerIn: parent
                text: "Right Panel"
                color: "white"
            }
        }

        Rectangle {
            color: "#1E90FF"
            width:  200   // Important: use Layout.preferredWidth

            Text {
                anchors.centerIn: parent
                text: "Right Panel"
                color: "white"
            }
        }
    }
}
