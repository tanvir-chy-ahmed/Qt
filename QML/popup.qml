import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Material

ApplicationWindow {
    width: 640
    id: root
    height: 480
    visible: true
    title: qsTr("Hello World")



    Popup{
        property string popuptext: "Successfully Hacked"
        padding: 10
        leftPadding:16
        rightPadding: 16
        id: mypopup
        width: 300
        height: 70

        x: root.width /2 - mypopup.width/2
        y: 30
        modal: true


        background: Rectangle{
            radius: mypopup.height/4
            color: "#eaf7ee"
            border.width: 2
            border.color: "#cee4d2"
            anchors.fill: parent
        }

        onAboutToShow:popupTimer.start()


        RowLayout{
            anchors.fill: parent


            Rectangle{


                anchors.left: parent.left
                anchors.top: parent.top
                Layout.alignment: Qt.AlignVCenter
                Layout.preferredWidth: 50
                Layout.fillHeight: true

                color: "#37b359"
                radius: height/4

                Rectangle{
                    anchors.centerIn: parent
                    width: 36
                    height: 36
                    radius: width/2
                    color: "#fff"

                    Image {
                        id: name
                        source: "https://img.freepik.com/premium-vector/green-checkmark-icon-vector-illustration-white-background-green-tick-approved-icon-vector_1296964-254.jpg?semt=ais_incoming&w=740&q=80"
                        anchors.centerIn: parent
                        height: 24
                        width: 24
                        fillMode: Image.PreserveAspectFit

                    }



                }


                Text {
                    x: 60
                    y: 10
                    id: mytxt
                    text: mypopup.popuptext

                    font{
                        pointSize: 12.5
                        weight: Font.DemiBold

                    }


                    color: "#1a1a1a"
                }
            }




        }



        Timer{
            repeat: false

            id:popupTimer
            interval: 3000
            onTriggered: mypopup.close();
        }


    }



    Button{
        anchors.centerIn: parent
        text: "Open PopUp"
        onClicked: {
            popupTimer.start();
            mypopup.open();

    }
    }

}
