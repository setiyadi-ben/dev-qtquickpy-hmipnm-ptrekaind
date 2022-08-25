import QtQuick 2.15
import "../../control"
import "../../pages"
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject

Item {

    Rectangle {
        id: rectangle
        color: "#282c34"
        anchors.fill: parent

        Image {
            id: image
            anchors.verticalCenter: parent.verticalCenter
            source: "../../../images/modul_images/layout_traksi.png"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }

        MenuButton {
            id: btnBack
            x: 1060
            y: 620
            text: qsTr("Kembali")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-gardutraksi.qml"))
            }
            btnIconSource: "../../../images/go-back-arrow.png"
            anchors.rightMargin: 20
            anchors.bottomMargin: 40
        }

        CustomRoundButton {
            x: 1094
            y: 250
//            width: 44
//            height: 42
            anchors.verticalCenter: parent.verticalCenter
            clip: true
            anchors.horizontalCenterOffset: 476
            anchors.verticalCenterOffset: -89
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CustomRoundButton {
            x: 1094
            y: 247
//            width: 44
//            height: 42
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: 499
            anchors.verticalCenterOffset: 166
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CustomRoundButton {
             id: genset
            x: 1085
            y: 252
//            width: 44
//            height: 42
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: -513
            anchors.verticalCenterOffset: -187
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/genset.qml"))
            }
        }

        CustomRoundButton {
            x: 1102
            y: 255
//            width: 44
//            height: 42
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: -536
            anchors.verticalCenterOffset: 9
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CustomRoundButton {
            x: 1095
            y: 248
//            width: 44
//            height: 42
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: -583
            anchors.verticalCenterOffset: 211
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}
}
##^##*/
