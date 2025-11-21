import QtQuick
import QtQuick.Shapes
Window {
    id: root
    color: "black"
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Shape{
        property real progress: 0.0

        id: prgbar
        anchors.centerIn: parent
        height: 200
        width: 200
        antialiasing: true
        smooth: true

        ShapePath{
            strokeWidth: 10
            fillColor: root.color
            strokeColor: "#9ef01a"

            PathAngleArc{
                centerX: prgbar.width/2
                centerY: prgbar.height/2
                radiusX: prgbar.width/2
                radiusY: prgbar.height/2

                startAngle: -90
                sweepAngle: prgbar.progress * 360
            }
        }


        Text {
            anchors.centerIn: parent
            id: name
            font {
                pointSize: 14
                weight: Font.DemiBold

            }
            color: "white"
            text: (prgbar.progress * 100).toFixed(0) + "%"
        }


    }



    NumberAnimation{
        id: numberAnim
        target: prgbar
        property: "progress"
        from: 0.0
        to: 1.0
        duration: 3600
        running: true
        // loops: 2
        loops: Animation.Infinite
    }
}



















