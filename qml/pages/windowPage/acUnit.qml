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

    Flow {
        id: flowtest
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        activeFocusOnTab: true
        focus: true
        spacing: 30
        anchors.bottomMargin: 100
        anchors.topMargin: 25
        anchors.rightMargin: 20
        anchors.leftMargin: 20

        MenuItemButton {
            id: evap
            width: 180
            text: "Left Menu Text"
            btnColorDefault: "#ffffff"
            Text {
                x: 0
                color: "#ffffff"
                text: "Evaporator"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            btnIconSource: "../../../images/modul_images/evap.png"
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/evaporator.qml"))
            }
        }

        MenuItemButton {
            id: exp
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                x: 0
                color: "#ffffff"
                text: "Katup Ekspansi"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/ekspansi.qml"))
            }
            btnIconSource: "../../../images/modul_images/katup.png"
        }

        MenuItemButton {
            id: compres
            x: 687
            y: 45
            width: 180
            height: 150
            btnColorDefault: "#ffffff"
            Text {
                x: 0
                color: "#ffffff"
                text: "Compressor"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            btnIconSource: "../../../images/modul_images/kompress.png"
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/compressor.qml"))
            }
        }

        MenuItemButton {
            id: cdr
            width: 180
            height: 150
            text: "Left Menu Text"
            btnColorDefault: "#ffffff"
            Text {
                x: 0
                color: "#ffffff"
                text: "Condensor"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/condensor.qml"))
            }
            btnIconSource: "../../../images/modul_images/kondensor.png"
        }

        MenuItemButton {
            id: prs
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                x: 0
                color: "#ffffff"
                text: "Pressure"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/pressure.qml"))
            }
            btnIconSource: "../../../images/modul_images/press.png"
        }

        MenuItemButton {
            id: suhu
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                x: 0
                color: "#ffffff"
                text: "Suhu"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/suhu.qml"))
            }
            btnIconSource: "../../../images/modul_images/suhu.png"
        }
        }
    }

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}
}
##^##*/
