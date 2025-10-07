import QtQuick 6.4
import QtQuick.Controls 6.4
import QtQuick.Dialogs 6.3

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "Qt6 QML FontDialog Example"

    // Label to show the selected font
    Label {
        id: label
        text: "Sample Text"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 50
        font.pointSize: 16
    }

    // FontDialog component
    FontDialog {
        id: fontDialog
        title: "Select a Font"

        // Triggered when user clicks OK
        onAccepted: {
            label.font.family = font.family
            label.font.pointSize = font.pointSize
            label.font.bold = font.bold
            label.font.italic = font.italic
            console.log("Font selected:", font.family, font.pointSize)
        }

        onRejected: {
            console.log("Font selection canceled")
        }
    }

    // Button to open the FontDialog
    Button {
        text: "Choose Font"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: label.bottom
        anchors.topMargin: 30
        onClicked: fontDialog.open()
    }
}
