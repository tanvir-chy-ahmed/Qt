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
            folderDialog.open()
        }
    }

   


    FolderDialog{
        id: folderDialog
        title: "Select The Folder"
        onAccepted:
        {
            console.log(folderDialog.selectedFolder)
        }
    }
}
