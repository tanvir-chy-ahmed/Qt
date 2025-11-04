import QtQuick
import QtQuick.Controls
Window {
    id: root
    width: 500
    height: 400
    visible: true
    title: qsTr("Hello World")


    property int count: 0

    signal mySignal()


    Rectangle{
      
        height: root.height
        width: root.width
        // x: root.width /2 - 50
        // y: root.height/2 - 50
        // fillMode: Image.Stretch
        id: hello

        // MouseArea{
        //     id: mousearea
        //     cursorShape: Qt.BusyCursor
        //     hoverEnabled: true
        //     anchors.fill: parent
        //     onClicked: {
        //         console.log("Mouse area clicked")
        //     }

        // }


        Image {
            fillMode: Image.Stretch
            id: img
            source: "https://www.tourbalidriver.com/wp-content/uploads/2025/05/nusa-penida-kelingking-beach.jpg"
        }

        Label{
            anchors.horizontalCenter:   parent.horizontalCenter
            text: "Counter Application"
            font.pointSize: 30
            font.bold: true
        }

        Column{
            anchors.fill: parent




            Text {
                leftPadding: 10
                y: root.height/2 - 100
                x: root.height / 2
                id: show
                text: count
                font.pointSize: 22
                font.bold: true

            }


            Row{
                id: rowhe
                anchors.centerIn: parent
                spacing: 20




                    Button{
                       font.pointSize: 22
                       height: 50
                       width: 50

                        text: "+"
                        onClicked: {
                            console.log("+")
                            count++
                        }
                    }





                    Button{
                        height: 50
                        width: 50
                        font.pointSize: 22
                        text: "-"

                        onClicked: {
                            console.log("-")
                            count--
                        }
                    }





            }



        }








    }


    // Flow{
    //     Rectangle{
    //         property color basecolor : "green"
    //         anchors.centerIn: parent

    //         id:bx1
    //         height: 100
    //         width: 100
    //         color: if(mousearea.containsPress){

    //                    return Qt.darker(basecolor)
    //                }else if(mousearea.containsMouse){
    //                    return Qt.lighter(basecolor)
    //                }else{
    //                    return basecolor
    //                }

    //         radius: 10

    //         Text {
    //             anchors.centerIn: parent
    //             id: mytxt
    //             text: "Click Me"
    //             color:  mousearea.containsPress ? "black" : "white"
    //         }

    //         MouseArea{
    //             id: mousearea
    //             hoverEnabled: true
    //             anchors.fill: parent
    //             onClicked: {

    //             }
    //         }
    //     }

    //     Rectangle{
    //         property color basecolor : "blue"
    //         anchors{
    //             top: parent.verticalCenter
    //             horizontalCenter: parent.horizontalCenter
    //             topMargin: 60
    //         }

    //         id:bx2
    //         height: 100
    //         width: 100
    //         color: if(mousearea1.containsPress){

    //                    return Qt.darker(basecolor)
    //                }else if(mousearea1.containsMouse){
    //                    return Qt.lighter(basecolor)
    //                }else{
    //                    return basecolor
    //                }

    //         radius: 10

    //         Text {
    //             anchors.centerIn: parent
    //             id: mytxt1
    //             text: "Close Application"
    //             color:  mousearea1.containsPress ? "black" : "white"
    //         }

    //         MouseArea{
    //             id: mousearea1
    //             hoverEnabled: true
    //             anchors.fill: parent
    //             onClicked: {
    //                 Qt.quit()
    //             }
    //         }
    //     }

    // }







    // anchors.fill: parent  // fillmaxsize / double.infinity
    // anchors.centerIn: parent  - center
    // anchors.centerIn: parent // Center()
    // anchors.top: parent.top  // Alignment.topCenter
    // anchors.bottom: parent.bottom // Alignment.bottomCenter
    // anchors.left: parent.left  // Alignment.Centerleft
    // anchors.right: parent.right  // Alignment.Centerright
    // anchors.margins: 50 // Padding(padding: EdgeInsets.all(50))

    // anchors.topMargin: 55
    // anchors.bottomMargin: 55
    // leftMargin, rightMargi






}
