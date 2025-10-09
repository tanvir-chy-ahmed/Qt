import QtQuick

QtObject
{
    property color backgroundcolor: "#FFFFFF"// This is available in all editors.
    property color txtcolor: "#FFFF9A00"
    function setLightTheme()
    {
         backgroundcolor = "#FFFFFF"
        txtcolor = "#FFFF9A00"
    }


    function setDarkTheme()
    {
        backgroundcolor = "#FF37353E"
        txtcolor = "#FFFFFF"
    }
}
