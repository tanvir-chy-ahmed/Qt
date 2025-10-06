 Column
    {
        anchors.centerIn: parent
        spacing: 10

        ProgressBar
        {
            height: 40
            width: 200
            id: myprg
            from: 0
            to:100
        }


        Row{

            Button{
                id: incre_BTN
                text: "Increment"
                onClicked: {
                    if(myprg.value < myprg.to)
                    {
                        myprg.value+= 5
                    }
                }
            }


            Button{
                id: decre_BTN
                text: "Decrement"

                onClicked: {
                    if(myprg.value > myprg.from)
                    {
                        myprg.value -= 5
                    }
                }

            }
        }

        Text {
            id: name
            text: "Progress " + Math.round(myprg.value) + " %"
            font.pixelSize: 15
        }


        Slider {
            id: mysld
            from: 0
            to: 100
            value: myprg.value   // initial sync

            onValueChanged: {
                myprg.value = mysld.value
            }
        }





    }
