import QtQuick 2.15
import "../../control"
import "../../pages"
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject

//                MenuItemButton{
//                    width: 250
//                    height: 120

//                }

Item {
    id: item1
    Rectangle{
        anchors.fill: parent
        color: "#2f3136"
    }

    MenuButton {
        id: btnBack
        text: qsTr("Kembali")
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        btnIconSource: "../../../images/go-back-arrow.png"
        anchors.rightMargin: 20
        anchors.bottomMargin: 40
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-ac.qml"))
        }
    }

        MenuItemButton {
            id: panelAC
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 707
            anchors.bottomMargin: 247
            anchors.topMargin: 173
            anchors.leftMargin: 73
            btnColorMouseOver: "#23272e"
            isActiveMenu: true
            iconWidth: 1000
            iconHeight: 1000
            btnColorDefault: "#2f3136"
            Text {
                x: 0
                y: -61
                color: "#ffffff"
                text: "Panel AC"
                anchors.bottom: parent.bottom
                anchors.horizontalCenterOffset: 0
                font.family: "Times New Roman"
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 30
                anchors.bottomMargin: 304
                font.bold: true
            }
            btnIconSource: "../../../images/modul_images/Panel_AC.png"
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/windowPage/acPanel.qml"))
            }
        }

        MenuItemButton {
            id: unitAC
            text: "Left Menu Text"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 739
            anchors.topMargin: 173
            anchors.bottomMargin: 247
            anchors.rightMargin: 41
            iconWidth: 1000
            iconHeight: 1000
            btnColorDefault: "#2f3136"
            Text {
                x: 0
                y: -64
                color: "#ffffff"
                text: "Unit AC"
                anchors.bottom: parent.bottom
                anchors.horizontalCenterOffset: 1
                font.family: "Times New Roman"
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 30
                anchors.bottomMargin: 307
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/windowPage/acUnit.qml"))
            }
            btnIconSource: "../../../images/modul_images/Unit_AC.png"
        }
}
/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}D{i:3}D{i:5}
}
##^##*/
