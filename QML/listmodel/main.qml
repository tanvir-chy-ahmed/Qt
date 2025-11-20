import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Material


ApplicationWindow {
    width: 640
    id: root
    height: 480
    color: "black"
    visible: true
    title: qsTr("Hello World")

    ListModel{
        id: myModel
        ListElement{
            name: "fjhdkjn"

        }

        ListElement{
            name: "fjhdkjn"

        }
        ListElement{
            name: "fjhdkjn"

        }

        ListElement{
            name: "fjhdkjn"

        }

        ListElement{
            name: "fjhdkjn"

        }

        ListElement{
            name: "fjhdkjn"

        }

        ListElement{
            name: "fjhdkjn"

        }

        ListElement{
            name: "fjhdkjn"

        }

        ListElement{
            name: "fjhdkjn"

        }



        ListElement{
            name: "fjhdkjn"

        }

        ListElement{
            name: "fjhdkjn"

        }
    }

    ListView{
        id:mylistview
        boundsBehavior: Flickable.StopAtBounds
        anchors{
            fill: parent
            margins: 30

        }
        model: myModel
        spacing: 5
        delegate: Rectangle{
            required property string name

            width: mylistview.width
            height: 50
            color: "#222"
            radius: 12

            Text{
                text: name
                font.pointSize: 14
                color: "#fff"
                anchors.centerIn: parent
            }

        }
        ScrollBar.vertical: CustomScrollbar{

        }
    }
}

















