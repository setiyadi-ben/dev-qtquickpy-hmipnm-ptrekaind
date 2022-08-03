import QtQuick 2.15
import "../../control"
import "../../pages"
import QtQuick.Controls 2.3

Item {
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

    MenuButton {
        id: btnBack
        x: 1060
        y: 620
        text: qsTr("Kembali")
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        btnIconSource: "../../../images/go-back-arrow.png"
        anchors.rightMargin: 20
        anchors.bottomMargin: 40
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-brake.qml"))
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}
}
##^##*/
