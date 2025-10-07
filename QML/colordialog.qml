import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs
ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "Color Dialog Example"

    // Current color
    property color currentColor: "lightblue"



    Rectangle {
        anchors.centerIn: parent
        width: 200
        height: 100
        color: currentColor
        border.color: "black"
        border.width: 2
        radius: 10
        Text {
            anchors.centerIn: parent
            text: "Click to change color"
            color: "black"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: colorDialog.open()
        }
    }


    ColorDialog {
        id: colorDialog
        title: "Choose a color"
        onAccepted: {
            currentColor = colorDialog.color
        }
        onRejected: {
            console.log("Color selection canceled")
        }
    }


}
