import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject

Item {
    id: item1
//    width: 1280
//    height: 720
//    anchors.fill: parent

//    Page {
//        id: page
//        anchors.fill: parent
//        title: ""

        Image {
            id: bgHome
            opacity: 1
            anchors.fill: parent
            source: "../../images/HOMEPAGE.png"
//            source: "../../images/Karir-4.jpg"
            fillMode: Image.Stretch
        }

        Rectangle {
            id: rectangle
            width: 350
            height: 80
            opacity: 1
            color: "#ffffff"
            radius : 30
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 20
            anchors.topMargin: 35

            Image {
                id: pnm
                width: 82
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "../../images/Logo Politeknik Negeri Madiun.png"
                anchors.leftMargin: 20
                anchors.bottomMargin: 10
                anchors.topMargin: 10
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: inka
                width: 100
                anchors.left: pnm.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "../../images/logo-inka-border-putih.png"
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.leftMargin: 3
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: reka
                width: 100
                anchors.left: inka.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "../../images/Logo-Reka-1000.png"
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.leftMargin: 20
                fillMode: Image.PreserveAspectFit
            }

//            Grid {
//                id: grid
//                anchors.left: parent.left
//                anchors.right: parent.right
//                anchors.top: parent.top
//                anchors.bottom: parent.bottom
//                anchors.bottomMargin: 8
//                anchors.topMargin: 8
//                columns: 1
//                rows: 1
//                flow: Grid.LeftToRight
//                state: ""
//                layoutDirection: Qt.RightToLeft
//                verticalItemAlignment: Grid.AlignVCenter
//                horizontalItemAlignment: Grid.AlignLeft
//                clip: false
//                anchors.leftMargin: 62
//                anchors.rightMargin: 8

//                Image {
//                    id: bumn
//                    width: 100
//                    height: 100
//                    anchors.right: inka.left
//                    anchors.top: parent.top
//                    source: "../../images/BUMN Terbaru.png"
//                    autoTransform: false
//                    anchors.rightMargin: 20
//                    anchors.topMargin: -10
//                    fillMode: Image.PreserveAspectFit
//                }

//                Image {
//                    id: inka
//                    width: 100
//                    height: 100
//                    anchors.verticalCenter: parent.verticalCenter
//                    anchors.right: reka.left
//                    source: "../../images/logo-inka-border-putih.png"
//                    anchors.rightMargin: 20
//                    fillMode: Image.PreserveAspectFit
//                }

//                Image {
//                    id: reka
//                    width: 100
//                    height: 100
//                    anchors.verticalCenter: parent.verticalCenter
//                    anchors.right: pnm.left
//                    source: "../../images/Logo-Reka-1000.png"
//                    anchors.rightMargin: 0
//                    fillMode: Image.PreserveAspectFit
//                }

//                Image {
//                    id: pnm
//                    width: 100
//                    height: 100
//                    anchors.verticalCenter: parent.verticalCenter
//                    anchors.right: parent.right
//                    source: "../../images/Logo Politeknik Negeri Madiun.png"
//                    anchors.rightMargin: 0
//                    fillMode: Image.PreserveAspectFit
//                }
//            }
        }


//    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.5;height:720;width:1280}
}
##^##*/
