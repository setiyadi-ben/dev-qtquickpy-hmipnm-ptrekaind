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
        anchors.top: flowtest.bottom
        anchors.topMargin: 20
        btnIconSource: "../../../images/go-back-arrow.png"
        anchors.rightMargin: 20
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-gardutraksi.qml"))
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
        anchors.bottomMargin: 120
        anchors.topMargin: 25
        anchors.rightMargin: 40
        anchors.leftMargin: 40

        MenuItemButton {
            id: genset
            Text {
                x: 0
                color: "#ffffff"
                text: "Genset"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            btnIconSource: "../../../images/modul_images/genset.jpeg"
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/genset.qml"))
            }
        }

        MenuItemButton {
            id: acb
            Text {
                x: 0
                color: "#ffffff"
                text: "ACB"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/acb.qml"))
            }
            btnIconSource: "../../../images/sample_images/acb.jpeg"
        }

        MenuItemButton {
            id: dswitchAc
            x: 687
            y: 45
            height: 150
            Text {
                x: 0
                color: "#ffffff"
                text: "Dswitch AC"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            btnIconSource: "../../../images/sample_images/dswitchac.jpeg"
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/dswitchAc.qml"))
            }
        }

        MenuItemButton {
            id: trafoStepUp
            height: 150
            text: "Left Menu Text"
            Text {
                x: 0
                color: "#ffffff"
                text: "Trafo StepUp"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/trafoStepUp.qml"))
            }
            btnIconSource: "../../../images/sample_images/stepup.jpg"
        }

        MenuItemButton {
            id: rectifier
            Text {
                x: 0
                color: "#ffffff"
                text: "Rectifier"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/rectifier.qml"))
            }
            btnIconSource: "../../../images/sample_images/rectifier.png"
        }

        MenuItemButton {
            id: hscb
            Text {
                x: 0
                color: "#ffffff"
                text: "HSCB"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/hscb.qml"))
            }
            btnIconSource: "../../../images/sample_images/hscb2.jpeg"
        }

        MenuItemButton {
            id: dswitchDc
            Text {
                x: 0
                color: "#ffffff"
                text: "Dswitch DC"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/dswitchDc.qml"))
            }
            btnIconSource: "../../../images/modul_images/genset.jpeg"
        }

        MenuItemButton {
            id: trafoArusAc
            height: 150
            text: "Left Menu Text"
            Text {
                x: 0
                color: "#ffffff"
                text: "Trafo Arus AC"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/trafoArusAc.qml"))
            }
            btnIconSource: "../../../images/sample_images/cttrafoac.jpeg"
        }

        MenuItemButton {
            id: trafoPotensioAc
            width: 200
            Text {
                x: 0
                color: "#ffffff"
                text: "Trafo Potensio AC"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/trafoPotensioAc.qml"))
            }
            btnIconSource: "../../../images/sample_images/TCVH.jpg"
        }

        MenuItemButton {
            id: trafoArusDc
            width: 200
            text: "Left Menu Text"
            Text {
                x: 0
                color: "#ffffff"
                text: "Trafo Arus DC"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/trafoPotensioDc.qml"))
            }
            btnIconSource: "../../../images/sample_images/trafoctdc.jpeg"
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
    D{i:0;autoSize:true;formeditorZoom:0.5;height:720;width:1280}
}
##^##*/
