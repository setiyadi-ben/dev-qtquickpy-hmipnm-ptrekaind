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
        spacing: 50
        anchors.bottomMargin: 100
        anchors.topMargin: 25
        anchors.rightMargin: 20
        anchors.leftMargin: 20

        MenuItemButton {
            id: evap
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

        MenuItemButton {
            id: aux
            btnColorDefault: "#ffffff"
            Text {
                x: 0
                color: "#ffffff"
                text: "Aux Contact"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/auxContact.qml"))
            }
            btnIconSource: "../../../images/modul_images/Aux_Contact.png"
        }

        MenuItemButton {
            id: termostat
            height: 150
            text: "Left Menu Text"
            btnColorDefault: "#ffffff"
            Text {
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
            btnIconSource: "../../../images/modul_images/Termostat.png"
        }

        MenuItemButton {
            id: mcb
            width: 200
            btnColorDefault: "#ffffff"
            Text {
                x: 0
                color: "#ffffff"
                text: "MCB"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/mcb.qml"))
            }
            btnIconSource: "../../../images/modul_images/MCB.png"
        }

        MenuItemButton {
            id: controlrelay
            width: 200
            text: "Left Menu Text"
            btnColorDefault: "#ffffff"
            Text {
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
            id: trafoPotensioDc
            Text {
                id: text1
                x: 0
                color: "#ffffff"
                text: "Trafo Potensio DC"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/trafoStepUp.qml"))
            }
            btnIconSource: "../../../images/sample_images/trafopotensiodc.jpeg"
        }
    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}
}
##^##*/
