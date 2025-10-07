ScrollView {
        width: 200
        height: 300

        Column {  // This stacks items vertically
            spacing: 5

            Repeater {
                model: 10

                Rectangle {
                    width: 180
                    height: 50
                    color: "#FFA500"

                    Text {
                        anchors.centerIn: parent
                        text: qsTr("text")
                        color: "white"
                    }
                }
            }
        }
    }
