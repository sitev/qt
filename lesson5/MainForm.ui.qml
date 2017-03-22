import QtQuick 2.6
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.0

Rectangle {
    property alias txfPath: txfPath
    property alias btnSelect: btnSelect
    property alias fileDialog: fileDialog

    width: 360
    height: 360

    Text {
        id: text1
        text: qsTr("Path to Source:")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 20
        anchors.topMargin: 20
        verticalAlignment: Text.AlignVCenter
        height: 30
    }

    TextField {
        id: txfPath
        anchors.left: text1.right
        anchors.leftMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.right: btnSelect.left
        anchors.rightMargin: 20
        placeholderText: qsTr("Text Field")
        height: 30
    }

    Button {
        id: btnSelect
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 20
        anchors.topMargin: 20
        text: qsTr("...")
        width: 40
        height: 30
    }

    FileDialog {
        id: fileDialog
        title: "Please choose a Path to Source"
        folder: shortcuts.home
        selectFolder: true
    }

}
