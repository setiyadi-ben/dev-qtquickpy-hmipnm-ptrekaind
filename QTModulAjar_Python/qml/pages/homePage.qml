import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject

Item {
    width: 1280
    height: 720
    anchors.fill: parent

    Page {
        id: page
        anchors.fill: parent
        title: ""

        Image {
            id: bgHome
            opacity: 0.653
            anchors.fill: parent
            source: "../../images/Karir-4.jpg"
            fillMode: Image.PreserveAspectCrop
        }

        Rectangle {
            id: rectangle
            x: 771
            width: 509
            height: 105
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
                    autoTransform: false
                    anchors.rightMargin: 20
                    anchors.topMargin: -10
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
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: pnm.left
                    source: "../../images/Logo-Reka-1000.png"
                    anchors.rightMargin: 0
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
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:5}D{i:6}D{i:7}D{i:8}D{i:4}D{i:3}
}
##^##*/
