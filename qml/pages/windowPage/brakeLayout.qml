import QtQuick 2.0
import "../../control"

Item {
    id: item1
    Image {
        id: image
        anchors.fill: parent
        source: "../../../images/sample_images/studio_4.jpg"
        asynchronous: true
        fillMode: Image.Stretch
    }

    CustomRoundButton {
        id: komponenA
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 307
        anchors.leftMargin: 308
        anchors.bottomMargin: 226
        anchors.topMargin: 226
        clip: true

    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}
}
##^##*/
