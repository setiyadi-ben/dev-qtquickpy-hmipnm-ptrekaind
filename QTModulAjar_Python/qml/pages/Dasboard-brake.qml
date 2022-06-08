import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import "../control" //import folder qml untuk kustom button

Item {
    id: item1
    width: 1280
    height: 720
    anchors.fill: parent

    Page {
        id: page
        anchors.fill: parent
        title: ""

        Image {
            id: image
            opacity: 0.65
            anchors.fill: parent
            source: "../../images/kai_rail_background.jpg"
            fillMode: Image.PreserveAspectCrop
        }
    }

    Rectangle {
        id: rectangle
        x: 802
        width: 478
        height: 74
        opacity: 1
        color: "#ffffff"
        radius : 15
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 33
        anchors.rightMargin: 0

        Grid {
            id: grid
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.topMargin: 8
            columns: 1
            rows: 1
            flow: Grid.LeftToRight
            state: ""
            layoutDirection: Qt.RightToLeft
            verticalItemAlignment: Grid.AlignVCenter
            horizontalItemAlignment: Grid.AlignLeft
            clip: false
            anchors.leftMargin: 70
            anchors.rightMargin: 0

            Image {
                id: bumn
                width: 100
                height: 100
                anchors.right: inka.left
                anchors.top: parent.top
                source: "../../images/BUMN Terbaru.png"
                anchors.topMargin: -30
                autoTransform: false
                anchors.rightMargin: 20
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: inka
                width: 100
                height: 100
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: reka.left
                source: "../../images/logo-inka-border-putih.png"
                anchors.rightMargin: 20
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: reka
                width: 100
                height: 100
                anchors.verticalCenter: pnm.verticalCenter
                anchors.right: parent.right
                source: "../../images/Logo-Reka-1000.png"
                anchors.rightMargin: 110
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: pnm
                width: 100
                height: 100
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                source: "../../images/Logo Politeknik Negeri Madiun.png"
                anchors.rightMargin: 0
                fillMode: Image.PreserveAspectFit
            }
        }
    }

    Row {
        id: row
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 40
        anchors.topMargin: 597
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        padding: 110
        leftPadding: 10
        topPadding: 10
        layoutDirection: Qt.RightToLeft
        spacing: 20

        MenuButton {
            id: btnIntroduksi
            text: qsTr("Introduksi")
            anchors.right: parent.right
            anchors.rightMargin: 110
            isActiveMenu: true
        }

        MenuButton {
            id: btnSkematik
            text: qsTr("Skematik")
            anchors.right: btnIntroduksi.left
            anchors.rightMargin: 20
            isActiveMenu: true
        }

        MenuButton {
            id: btnLayout
            text: qsTr("Layout")
            anchors.right: btnSkematik.left
            anchors.rightMargin: 20
            isActiveMenu: true
        }

        MenuButton {
            id: btnMonitoring
            text: qsTr("Monitoring")
            anchors.right: btnLayout.left
            anchors.rightMargin: 20
            isActiveMenu: true
        }

        MenuButton {
            id: btnControl
            text: qsTr("Control")
            anchors.right: btnMonitoring.left
            anchors.rightMargin: 20
            isActiveMenu: true
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:10}D{i:11}D{i:12}D{i:13}D{i:14}D{i:9}
}
##^##*/
