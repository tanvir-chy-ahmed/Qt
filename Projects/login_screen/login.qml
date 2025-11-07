import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic


Window {
    width: 1000
    height: 480
    visible: true
    title: qsTr("Login")
    id: root



    Rectangle{
        anchors.fill: parent

        Row{
            anchors.fill: parent






            Row{
                width: root.width/2
                id: leftSide
                anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom



                Rectangle {
                    anchors.fill: parent

                    Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectCrop
                        id: mainleft
                        source: "qrc:/assets/login.png"
                    }



                    Column{
                        anchors{

                            horizontalCenter: parent.horizontalCenter

                        }
                        FontLoader {
                            id: cabinetFont
                            source: "qrc:/assets/fonts/CabinetGroteskVariable.ttf"
                        }

                        FontLoader {
                            id: emotionalFont
                            source: "qrc:/assets/fonts/EmotionalRescuePersonalUse.ttf"
                        }



                            Label{

                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                topPadding: 40
                                text: "Travelista Tours"
                                font.family: emotionalFont.name
                                font.pointSize: 20
                                color: "#fffbef"
                            }


                        Label{
                            leftPadding: 5
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.family: cabinetFont.name
                            text: "Travel is the only purchase that enriches you in ways\nbeyond material wealth"
                            font.pointSize: 8
                            font.bold: true
                            color: "#fffbef"
                        }
                    }


                }
            }


            Row{
                id: rightSide
                width: root.width/2
                anchors.left: leftSide.right
                anchors.bottom: parent.bottom
                anchors.top: parent.top
                anchors.right: parent.right

                Rectangle {
                    anchors.fill: parent
                    color: "white"

                    Image{
                        height: 100
                        width: 150
                        source: "qrc:/assets/plane.png"
                        fillMode: Image.PreserveAspectFit
                        id: plane

                        anchors{
                            right: parent.right
                            top:parent.top
                        }
                    }
                    Label{
                        x:170
                        y:50
                        id: topwel
                        text: "Welcome"
                        color: "#FF009EE2"
                        font.bold: true
                        font.pointSize: 30
                    }

                    Image {
                        height: 100
                        width: 100
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        anchors.bottomMargin: -1

                        fillMode: Image.PreserveAspectCrop
                        id: leftcorner
                        source: "qrc:/assets/leftcorner.png"

                    }



                    Image {

                        height: 100
                        width: 100
                        anchors.bottomMargin: -1
                        anchors.bottom: parent.bottom
                        anchors.right: parent.right

                        fillMode: Image.PreserveAspectCrop
                        id: rightcorner
                        source: "qrc:/assets/rightcorner.png"
                    }










                        Rectangle{
                        anchors{

                        left: parent.left
                        right: parent.right
                        top: topwel.bottom
                        }
                         height: 60
                         width: 60

                            color: "white"
                            Column{
                               anchors.horizontalCenter: parent.horizontalCenter

                               height: 100


                                spacing: 8

                                Label{
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    text: "Login with Email"
                                    font.pointSize: 10
                                    color: "grey"
                                }

                                Item{
                                    height: 5
                                    width: 20
                                }

                                TextField {
                                     anchors.horizontalCenter: parent.horizontalCenter
                                    width: 210
                                    height: 35
                                    placeholderText: "email"
                                    selectedTextColor: "black"


                                    background: Rectangle {
                                        color: "white"           // background color
                                      border.color: parent.activeFocus ?  "#FF009EE2" : "gray"     //
                                        border.width: 0.9          // border thickness
                                        radius: 8               // rounded corners
                                    }
                                }
                                Item{
                                    height: 1
                                    width: 20
                                }



                                TextField {
                                     anchors.horizontalCenter: parent.horizontalCenter
                                    echoMode: "Password"
                                    width: 210
                                    height: 35
                                    placeholderText: "password"
                                    selectedTextColor: "black"
                                    background: Rectangle {
                                        color: "white"           // background color
                                        border.color: parent.activeFocus ?  "#FF009EE2" : "gray"     // border color
                                        border.width: 0.9         // border thickness
                                        radius: 8              // rounded corners
                                    }
                                }


                                Label{
                                    text: "Forgot your password?"

                                    x: 120

                                    font.pointSize: 7
                                    color: "grey"
                                }

                                Item{
                                    height: 5
                                    width: 20
                                }

                                Button{
                                    hoverEnabled: true
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    height: 30
                                    width: 70
                                   Text{
                                       anchors.centerIn: parent
                                       text: "Login"
                                       color: "white"
                                       font.bold: true
                                   }


                                    background: Rectangle{
                                        color: "#FF009EE2"
                                        radius: 8
                                    }
                                }

                                Item{
                                    height: 5
                                    width: 20
                                }


                                Label{
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    text: "________OR________"
                                    font.pointSize: 9
                                    color: "gray"
                                    font.bold: true
                                }


                                Item{
                                    height: 5
                                    width: 20
                                }

                                Row{
                                    spacing: 8
                                    Button{
                                        hoverEnabled: true
                                        height: 40
                                        width: 65
                                        background: Rectangle{
                                            color: "#FFe7f2f5"
                                            radius: 8
                                        }

                                        Image {
                                        anchors.centerIn: parent
                                            height: 20
                                            width: 30
                                            id: google_ic
                                            fillMode: Image.PreserveAspectFit
                                            source: "qrc:/assets/google.png"
                                        }
                                    }

                                    Button{
                                        hoverEnabled: true
                                        height: 40
                                        width: 65
                                        background: Rectangle{
                                            color: "#FFe7f2f5"
                                            radius: 8
                                        }
                                        Image {
                                        anchors.centerIn: parent
                                            height: 20
                                            width: 30
                                            id: fb_ic
                                            fillMode: Image.PreserveAspectFit
                                            source: "qrc:/assets/fb.png"
                                        }
                                    }


                                    Button{
                                        hoverEnabled: true
                                        height: 40
                                        width: 65
                                        background: Rectangle{
                                            color: "#FFe7f2f5"
                                            radius: 8
                                        }
                                        Image {
                                        anchors.centerIn: parent
                                            height: 30
                                            width: 30
                                            id: apple
                                            fillMode: Image.PreserveAspectFit
                                            source: "qrc:/assets/apple.png"
                                        }
                                    }



                                }


                                Label{
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    text: "Don’t have account? Register Now"
                                    color: "black"
                                    font.pointSize: 8
                                }

                            }


                        }



                    }



            }





        }

    }



}
