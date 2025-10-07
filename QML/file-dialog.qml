import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "File Dialog Example"

    Button {
        id: mybtn
        text: "Choose Location"
        anchors.centerIn: parent

        onClicked: {
            fileDialog.open()
        }
    }

   


    FileDialog {
           id: fileDialog
           title: "Select a file"
           // Use an absolute path or home path
           // Example for Windows:
           // currentFolder: "C:/Users/YourUser/Downloads"
           // Example for Linux/macOS:
           // Optional: filter for file types
           nameFilters: ["*.txt", "*.pdf", "*.*"]
   
           currentFolder: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0]
               onAccepted: image.source = selectedFile
       }
}
