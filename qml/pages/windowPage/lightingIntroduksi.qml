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
            stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-lighting.qml"))
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
            id: headlamp
            text: "Head Lamp"
            Text {
                x: 0
                color: "#ffffff"
                text: "Head Lamp"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            btnIconSource: "../../../images/modulLighting/headlamp.JPG"
            onClicked: {
                stackView.push(Qt.resolvedUrl("../detailPage/headlamp.qml"))
            }
        }

        MenuItemButton {
            id: housinghead
            Text {
                x: 0
                color: "#ffffff"
                text: "Housing Head Lamp"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../detailPage/housing.qml"))
            }
            btnIconSource: "../../../images/modulLighting/housing.jpg"
        }

        MenuItemButton {
            id: sidered
            x: 687
            y: 45
            height: 150
            Text {
                x: 0
                color: "#ffffff"
                text: "Side Signal Lamp Red"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            btnIconSource: "../../../images/modulLighting/side-r.JPG"
            onClicked: {
                stackView.push(Qt.resolvedUrl("../detailPage/sidesignal-r.qml"))
            }
        }

        MenuItemButton {
            id: sidegreen
            height: 150
            text: "Side Signal Lamp Green"
            Text {
                x: 0
                color: "#ffffff"
                text: "Side Signal Lamp Gree"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../detailPage/sidesignal-g.qml"))
            }
            btnIconSource: "../../../images/modulLighting/side-g.JPG"
        }

        MenuItemButton {
            id: front
            Text {
                x: 0
                color: "#ffffff"
                text: "Front Signal Lamp"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../detailPage/frontsignal.qml"))
            }
            btnIconSource: "../../../images/modulLighting/hdb.JPG"
        }

        MenuItemButton {
            id: cabin
            Text {
                x: 0
                color: "#ffffff"
                text: "Cabin Lamp"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../detailPage/cabinlamp.qml"))
            }
            btnIconSource: "../../../images/modulLighting/downlight.jpeg"
        }
        MenuItemButton {
            id: passanger
            Text {
                x: 0
                color: "#ffffff"
                text: "Cabin Lamp"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../detailPage/passangerlamp.qml"))
            }
            btnIconSource: "../../../images/modulLighting/ekstrusi.jpeg"
        }
        MenuItemButton {
            id: emergency
            Text {
                x: 0
                color: "#ffffff"
                text: "Cabin Lamp"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../detailPage/emergencylamp.qml"))
            }
            btnIconSource: "../../../images/modulLighting/ekstrusi.jpeg"
        }
        MenuItemButton {
            id: passanger9
            Text {
                x: 0
                color: "#ffffff"
                text: "Cabin Lamp"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 10
                anchors.bottomMargin: -25
                font.bold: true
            }
            onClicked: {
                stackView.push(Qt.resolvedUrl("../detailPage/pass9.qml"))
            }
            btnIconSource: "../../../images/modulLighting/ekstrusi.jpeg"
        }
    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.5;height:720;width:1280}
}
##^##*/
