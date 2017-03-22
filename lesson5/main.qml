import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MainForm {
        anchors.fill: parent

        btnSelect.onClicked: {
            fileDialog.open();
        }

        fileDialog.onAccepted: {
            console.log("Accepted: " + fileDialog.fileUrls);
            for (var i = 0; i < fileDialog.fileUrls.length; ++i)
                txfPath.text = fileDialog.fileUrls[i];
        }
    }
}
