import QtQuick 2.0
import QtQuick.Controls 2.3
import "../../pages"
import "../../control"

Item {
    Rectangle {
        id: rectangle
        color: "#3f3f3f"
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            visible: true
            color: "#000000"
            border.color: "#ffffff"
            border.width: 5
            anchors.fill: parent
            focus: false
            clip: true

            Image {
                id: image
                visible: true
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                verticalAlignment: Image.AlignVCenter
                source: "../../../images/modul_images/Diagram.png"
                sourceSize.width: 8192
                sourceSize.height: 8192
                anchors.rightMargin: 8
                anchors.leftMargin: 8
                anchors.topMargin: 63
                anchors.bottomMargin: 7
                fillMode: Image.Stretch
            }

            Label {
                id: label
                color: "#ffffff"
                text: qsTr("Desain Electric")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                anchors.topMargin: 3
                anchors.rightMargin: 130
                anchors.leftMargin: 130
                font.pointSize: 25
                font.family: "Times New Roman"
            }
            MenuButton {
                id: btnBack
                y: 628
                text: qsTr("Kembali")
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.leftMargin: 28
                anchors.bottomMargin: 32
                btnIconSource: "../../../images/go-back-arrow.png"
                onClicked: {
                    stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-ac.qml"))
                }
           }
        }
    }
}
/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}
}
##^##*/
