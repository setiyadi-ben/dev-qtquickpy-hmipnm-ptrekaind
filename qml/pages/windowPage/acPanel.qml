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

    Flow {
        id: flowtest
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        anchors.rightMargin: 47
        anchors.leftMargin: 0
        anchors.topMargin: 0
        activeFocusOnTab: true
        focus: true
        spacing: 30

        MenuItemButton {
            id: mcb1p
            width: 180
            height: 150
            text: "Left Menu Text"
            btnColorDefault: "#ffffff"
            Text {
                x: 0
                color: "#ffffff"
                text: "MCB-1P"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/mcb-1P.qml"))
            }
            btnIconSource: "../../../images/modul_images/mcb.png"
        }

        MenuItemButton {
            id: motorstarter
            width: 180
            height: 150
            text: "Left Menu Text"
            btnColorDefault: "#ffffff"
            Text {
                x: 0
                color: "#ffffff"
                text: "Manual Motor Starter"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/manualMotorStarter.qml"))
            }
            btnIconSource: "../../../images/modul_images/manual motor starter.png"
        }

        MenuItemButton {
            id: mcb2p
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                x: 0
                color: "#ffffff"
                text: "MCB-2P"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/mcb-2P.qml"))
            }
            btnIconSource: "../../../images/modul_images/mcb 2p.png"
        }

        MenuItemButton {
            id: timerelay
            width: 180
            text: "Left Menu Text"
            btnColorDefault: "#ffffff"
            Text {
                x: 0
                color: "#ffffff"
                text: "Time Relay"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/timeRelay.qml"))
            }
            btnIconSource: "../../../images/modul_images/time relay.png"
        }

        MenuItemButton {
            id: interfacerelay
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                id: text1
                x: 0
                color: "#ffffff"
                text: "Interface Relay"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/interfaceRelay.qml"))
            }
            btnIconSource: "../../../images/modul_images/interface relay.png"
        }

        MenuItemButton {
            id: controlrelay
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                id: text2
                x: 0
                color: "#ffffff"
                text: "Control Relay"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/controlRelay.qml"))
            }
            btnIconSource: "../../../images/modul_images/control relay.png"
        }
        MenuItemButton {
            id: contactor
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                id: text3
                x: 0
                color: "#ffffff"
                text: "3-Pole Contactor"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/3-poleContactor.qml"))
            }
            btnIconSource: "../../../images/modul_images/3-pole contactor.png"
        }
        MenuItemButton {
            id: selectorSwitch
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                id: text4
                x: 0
                color: "#ffffff"
                text: "Selector Switch"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/selectorSwitch.qml"))
            }
            btnIconSource: "../../../images/modul_images/selector switch.png"
        }
        MenuItemButton {
            id: ca431m
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                id: text5
                x: 0
                color: "#ffffff"
                text: "CA4-31M"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/CA4-31M.qml"))
            }
            btnIconSource: "../../../images/modul_images/CA4-31M.png"
        }
        MenuItemButton {
            id: hk120
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                id: text6
                x: 0
                color: "#ffffff"
                text: "HK1-20"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/HK1-20.qml"))
            }
            btnIconSource: "../../../images/modul_images/HK1-20.png"
        }
        MenuItemButton {
            id: hkf111
            width: 180
            text: "Left Menu Text"
            btnColorDefault: "#ffffff"
            Text {
                id: text7
                x: 0
                color: "#ffffff"
                text: "HKF1-11"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/HKF1-11.qml"))
            }
            btnIconSource: "../../../images/modul_images/HKF1-11.png"
        }
        MenuItemButton {
            id: relay3phase
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                id: text8
                x: 0
                color: "#ffffff"
                text: "3-Phase Relay"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/3-phaseRelay.qml"))
            }
            btnIconSource: "../../../images/modul_images/3-phase relay.png"
        }
        MenuItemButton {
            id: indikatorwhite
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                id: text9
                x: 0
                color: "#ffffff"
                text: "Indikator White"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/indikatorWhite.qml"))
            }
            btnIconSource: "../../../images/modul_images/indikator white.png"
        }
        MenuItemButton {
            id: indikatorgreen
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                id: text10
                x: 0
                color: "#ffffff"
                text: "Indikator Green"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/indikatorGreen.qml"))
            }
            btnIconSource: "../../../images/modul_images/indikator green.png"
        }
        MenuItemButton {
            id: indikatorred
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                id: text11
                x: 0
                color: "#ffffff"
                text: "Indikator Red"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/indikatorRed.qml"))
            }
            btnIconSource: "../../../images/modul_images/indikator red.png"
        }
        MenuItemButton {
            id: termostat
            width: 180
            btnColorDefault: "#ffffff"
            Text {
                id: text12
                x: 0
                color: "#ffffff"
                text: "Termostat"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/termostat.qml"))
            }
            btnIconSource: "../../../images/modul_images/termostat.png"
        }
            }
    }



/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}D{i:3}
}
##^##*/
