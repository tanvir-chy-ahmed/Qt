import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Rectangle{
        id: parentRoot
        anchors.fill: parent
        color:  "#FF777C6D"



        Rectangle{
            id: topNode
            height: 80
            color: "#FF08CB00"
            width: 80
           anchors.horizontalCenter: parent.horizontalCenter
           anchors.bottom: middleNode.top


            Text {
                id: toptxt
                text: "Top Node"
                color: "white"
                anchors.centerIn: parent
            }

        }

        Rectangle{
            id: middleNode
            height: 80
            color: "#FFE9B63B"
            width: 80
            anchors.centerIn: parent

            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id: middletxt
                text: "Middile Node"
                color: "white"
                anchors.centerIn: parent
            }

        }

        Rectangle{
            id: leftNode
            height: 80
            color: "#FFE2A16F"
            width: 80
            anchors.right: middleNode.left
            anchors.verticalCenter: middleNode.verticalCenter


            Text {
                id: lefttxt
                text: "Left Node"
                color: "white"
                anchors.centerIn: parent
            }

        }


        Rectangle{
            id: rigthNode
            height: 80
            color: "#FFEF7722"
            width: 80
            //hook in left no matter position - where set like top node right side
            anchors.left: middleNode.right
            anchors.verticalCenter:  middleNode.verticalCenter


            Text {
                id: righttxt
                text: "Right Node"
                color: "white"
                anchors.centerIn: parent
            }

        }

        Rectangle{
            id: bottomNode
            height: 80
            color: "#FF468A9A"
            width: 80
            anchors.top:  middleNode.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            Text {
                id: bottomtxt
                text: "Bottom Node"
                color: "white"
                anchors.centerIn: parent
            }

        }

    }
}
