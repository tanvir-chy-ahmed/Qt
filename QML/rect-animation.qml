import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs

ApplicationWindow {
    visible: true
    width: 3000
    height: 800
    title: "File Dialog Example"

  Rectangle
  {
      id: myRct
      width: 100
      height: 100
      color: "#FF0000"
      PropertyAnimation on x
      {
          from: 0
          to: width - myRct.width
          duration: 2000
          easing: easing.InBounce
      }
  }

  Rectangle
  {
      id: myRct2
      width: 100
      height: 100
      color: "#FF0000"
      PropertyAnimation on y
      {
          from: 0
          to: width - myRct2.width
          duration: 2000
      }
  }



  Rectangle {
      id: myRct4
      width: 100
      height: 100
      color: "#0000FF"
      x: 400
      y: 200

      PropertyAnimation {
          target: myRct4
          property: "rotation"
          from: 0
          to: 360
          loops: Animation.Infinite
          duration: 1000
          running: true
      }
  }




}
