Column
    {
        anchors.centerIn: parent
        spacing: 10

        Label{
            text: "TAC"
            id: mylabel
            width: 200
            height: 100


            verticalAlignment:  Qt.AlignVCenter
            horizontalAlignment: Qt.AlignHCenter

            scale: mouseArea.containsMouse ? 1.2 : 1
            color: mouseArea.containsMouse ? "black" : "red"
            background: Rectangle{
                border.width: 2
                radius: 20
                border.color: "#EBD9D1"
            }

            MouseArea{
                id: mouseArea
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
            }
        }




    }
