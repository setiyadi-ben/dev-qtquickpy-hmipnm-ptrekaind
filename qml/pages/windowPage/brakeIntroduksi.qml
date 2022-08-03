import QtQuick 2.15
import "../../control"

Item {
    id: item1

    Image {
        id: image
        anchors.fill: parent
        source: "../../../images/modul_images/pengenalan.jpeg"
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        fillMode: Image.PreserveAspectCrop
    }

    CustomRoundButton {
        id: komponenA
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 226
        anchors.topMargin: 226
        anchors.rightMargin: 307
        clip: true
        anchors.leftMargin: 308
    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1}D{i:2}
}
##^##*/
