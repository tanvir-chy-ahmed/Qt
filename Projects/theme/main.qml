import QtQuick
import QtQuick.Controls
import "."
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Theme changer")
    AppTheme{

        id:apptheme


    }
    Component.onCompleted: apptheme.setLightTheme()


    Rectangle{
        width: parent.width
        height: parent.height
        color: apptheme.backgroundcolor


        Switch{
            id: themeswitch
            text: checked ? "Dark Mode" : "Light Mode"
            anchors.top: parent.top
            anchors.topMargin: 150
            anchors.horizontalCenterOffset: -14
            checked: false
            anchors.horizontalCenter: parent.horizontalCenter
            onCheckedChanged: {

            if(checked)
            {
                apptheme.setDarkTheme()
                text: "Dark Mode"
            }else{
                apptheme.setLightTheme()
                text: "Light Mode"



            }
            }
        }

        Column{
            anchors.centerIn: parent
            Text {
                id: mytxt
                font.pointSize: 20
                text: qsTr("Developer Tanvir (XORNEX)")// This is available in all editors.c
                color: apptheme.txtcolor
            }
        }
    }

}


