import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")



    StackView{
        id:stcView
        anchors{
            fill: parent
            margins: 80
        }

        initialItem: mypage



        // No Animation show if this are null
        // pushEnter: null
        // popEnter: null
        // replaceEnter: null
        // popExit: null
        // pushExit: null
        // replaceExit: null

    }

    RowLayout{
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 20
        spacing: 40
        Button{
            text: "Add Page"
            onClicked: stcView.push(mypage,{pageText: "xyz " + Math.random()})
        }

        Button{
            text: qsTr("Remove Page")
            onClicked: stcView.pop()
        }


    }


    Component{
        id: mypage
        Page{
            required property string pageText
            background: Rectangle{
                color: Qt.rgba(Math.random(),Math.random(),Math.random())
                opacity: 0.7
            }

            Text {
                id: name
                // text: qsTr("My Page" + stcView.depth)// This is available in all editors.
                anchors.centerIn: parent
                font{
                    pointSize: 15
                }
                text: pageText
            }
        }
    }
    // Page{
    //     anchors.fill: parent
    //     header: Rectangle{
    //         height: 30
    //         color: "green"

    //     }
    //     Text {
    //         id: name
    //         text: qsTr("text")
    //     }
    //     footer: Rectangle{
    //         height: 50
    //         color: "red"
    //     }
    // }


}
