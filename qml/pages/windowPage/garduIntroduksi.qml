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
Image {
    id: image
    opacity: 1
    anchors.fill: parent
    source: "../../../images/wp_gardutraksi.jpg"
    fillMode: Image.PreserveAspectCrop

    Page {
        id: page
        opacity: 0.646
        anchors.fill: parent
    }

}

Column {
    id: column
    anchors.centerIn: parent
//    anchors.horizontalCenter: parent.horizontalCenter
    width: 877
    height: 517
    spacing: 20

    MenuItemButton{
        id: genset
        btnIconSource: "../../../images/modul_images/genset.jpeg"
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/genset.qml"))
        }
        Text {
            x: 0
                            color: "#000000"
                            text: "Genset"
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: -25
                            anchors.horizontalCenter: parent.horizontalCenter
                            font.pointSize: 10
                            font.bold: true

        }

    }

    MenuItemButton {
        id: acb
        anchors.left: genset.right
        anchors.leftMargin: 20
        btnIconSource: "../../../images/sample_images/acb.jpeg"
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/acb.qml"))
        }

        Text {
            x: 0
            color: "#000000"
            text: "ACB"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            anchors.bottomMargin: -25
            font.pointSize: 10
        }
    }

    MenuItemButton {
        id: dswitchAc
        anchors.left: acb.right
        anchors.leftMargin: 20
        spacing: 300
        btnIconSource: "../../../images/sample_images/dswitchac.jpeg"
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/dswitchAc.qml"))
        }

        Text {
            x: 0
            color: "#000000"
            text: "Dswitch AC"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            anchors.bottomMargin: -25
            font.pointSize: 10
        }
    }

    MenuItemButton {
        id: trafoStepUp
        text: "Left Menu Text"
        anchors.left: dswitchAc.right
        anchors.leftMargin: 20
        btnIconSource: "../../../images/sample_images/stepup.jpg"
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/trafoStepUp.qml"))
        }

        Text {
            x: 0
            color: "#000000"
            text: "Trafo StepUp"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            anchors.bottomMargin: -25
            font.pointSize: 10
        }
    }

    MenuItemButton {
        id: rectifier
        anchors.left: parent.left
        anchors.top: genset.bottom
        anchors.leftMargin: 0
        anchors.topMargin: 35
        btnIconSource: "../../../images/sample_images/rectifier.png"
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/rectifier.qml"))
        }

        Text {
            x: 0
            color: "#000000"
            text: "Rectifier"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            anchors.bottomMargin: -25
            font.pointSize: 10
        }
    }

    MenuItemButton {
        id: hscb
        anchors.left: rectifier.right
        anchors.top: acb.bottom
        anchors.leftMargin: 20
        anchors.topMargin: 35
        btnIconSource: "../../../images/sample_images/hscb2.jpeg"
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/hscb.qml"))
        }

        Text {
            x: 0
            color: "#000000"
            text: "HSCB"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            anchors.bottomMargin: -25
            font.pointSize: 10
        }
    }

    MenuItemButton {
        id: dswitchDc
        anchors.left: hscb.right
        anchors.top: dswitchAc.bottom
        anchors.topMargin: 35
        btnIconSource: "../../../images/modul_images/genset.jpeg"
        anchors.leftMargin: 20
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/dswitchDc.qml"))
        }

        Text {
            x: 0
            color: "#000000"
            text: "Dswitch DC"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            anchors.bottomMargin: -25
            font.pointSize: 10
        }
    }

    MenuItemButton {
        id: trafoArusAc
        text: "Left Menu Text"
        anchors.left: dswitchDc.right
        anchors.top: trafoStepUp.bottom
        anchors.topMargin: 35
        btnIconSource: "../../../images/sample_images/cttrafoac.jpeg"
        anchors.leftMargin: 20
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/trafoArusAc.qml"))
        }

        Text {
            x: 0
            color: "#000000"
            text: "Trafo Arus AC"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            anchors.bottomMargin: -25
            font.pointSize: 10
        }
    }

    MenuItemButton {
        id: trafoPotensioAc
        anchors.left: parent.left
        anchors.top: rectifier.bottom
        anchors.topMargin: 35
        btnIconSource: "../../../images/sample_images/TCVH.jpg"
        anchors.leftMargin: 0
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/trafoPotensioAc.qml"))
        }

        Text {
            x: 0
            color: "#000000"
            text: "Trafo Potensio AC"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            anchors.bottomMargin: -25
            font.pointSize: 10
        }
    }

    MenuItemButton {
        id: trafoArusDc
        text: "Left Menu Text"
        anchors.left: rectifier.right
        anchors.top: hscb.bottom
        anchors.topMargin: 35
        btnIconSource: "../../../images/sample_images/trafoctdc.jpeg"
        anchors.leftMargin: 20
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/trafoPotensioDc.qml"))
        }

        Text {
            x: 0
            color: "#000000"
            text: "Trafo Arus DC"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            anchors.bottomMargin: -25
            font.pointSize: 10
        }
    }

    MenuItemButton {
        id: trafoPotensioDc
        anchors.left: trafoArusDc.right
        anchors.top: dswitchDc.bottom
        anchors.topMargin: 35
        btnIconSource: "../../../images/sample_images/trafopotensiodc.jpeg"
        anchors.leftMargin: 20
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/trafoStepUp.qml"))
        }

        Text {
            x: 0
            color: "#000000"
            text: "Trafo Potensio DC"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            anchors.bottomMargin: -25
            font.pointSize: 10
        }
    }

}

MenuButton {
    id: btnBack
    text: qsTr("Kembali")
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    anchors.rightMargin: 20
    anchors.bottomMargin: 40
    btnIconSource: "../../../images/go-back-arrow.png"
    //    isActiveMenu: false
    onClicked: {
        stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-gardutraksi.qml"))
    }
}


}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:720;width:1280}D{i:2}D{i:5}D{i:7}D{i:6}
D{i:9}D{i:8}D{i:11}D{i:10}D{i:13}D{i:12}D{i:15}D{i:14}D{i:17}D{i:16}D{i:19}D{i:18}
D{i:21}D{i:20}D{i:23}D{i:22}D{i:25}D{i:24}D{i:26}
}
##^##*/
