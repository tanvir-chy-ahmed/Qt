Column {

      Repeater{
        model: 10

        Rectangle { width: 100; height: 50; color: "#FFA500"

          Text {
            id: "name"
            text: qsTr("text")
          }
        }
      }


    }
