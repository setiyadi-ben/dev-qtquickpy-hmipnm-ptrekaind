import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import "../control" //import folder qml untuk kustom button
import "../pages/windowPage" //import halaman swipeview

Item {
//    id: item
////    width: 1280
////    height: 720
//////    anchors.fill: parent

//////    Page {
//////        id: page
//////        anchors.fill: parent
//////        title: ""

        Image {
            id: image
            opacity: 1
            anchors.fill: parent
            source: "../../images/kai_rail_background.jpg"
            fillMode: Image.PreserveAspectCrop
        }
//    }

//    Rectangle {
//        id: rectangle
//        x: 802
//        width: 478
//        height: 74
//        opacity: 1
//        color: "#ffffff"
//        radius : 15
//        anchors.right: parent.right
//        anchors.top: parent.top
//        anchors.topMargin: 33
//        anchors.rightMargin: 0

////        Grid {
////            id: grid
////            anchors.left: parent.left
////            anchors.right: parent.right
////            anchors.top: parent.top
////            anchors.bottom: parent.bottom
////            anchors.bottomMargin: 8
////            anchors.topMargin: 8
////            columns: 1
////            rows: 1
////            flow: Grid.LeftToRight
////            state: ""
////            layoutDirection: Qt.RightToLeft
////            verticalItemAlignment: Grid.AlignVCenter
////            horizontalItemAlignment: Grid.AlignLeft
////            clip: false
////            anchors.leftMargin: 70
////            anchors.rightMargin: 0

////            Image {
////                id: bumn
////                width: 100
////                height: 100
////                anchors.right: inka.left
////                anchors.top: parent.top
////                source: "../../images/BUMN Terbaru.png"
////                anchors.topMargin: -30
////                autoTransform: false
////                anchors.rightMargin: 20
////                fillMode: Image.PreserveAspectFit
////            }

////            Image {
////                id: inka
////                width: 100
////                height: 100
////                anchors.verticalCenter: parent.verticalCenter
////                anchors.right: reka.left
////                source: "../../images/logo-inka-border-putih.png"
////                anchors.rightMargin: 20
////                fillMode: Image.PreserveAspectFit
////            }

////            Image {
////                id: reka
////                width: 100
////                height: 100
////                anchors.verticalCenter: pnm.verticalCenter
////                anchors.right: parent.right
////                source: "../../images/Logo-Reka-1000.png"
////                anchors.rightMargin: 110
////                fillMode: Image.PreserveAspectFit
////            }

////            Image {
////                id: pnm
////                width: 100
////                height: 100
////                anchors.verticalCenter: parent.verticalCenter
////                anchors.right: parent.right
////                source: "../../images/Logo Politeknik Negeri Madiun.png"
////                anchors.rightMargin: 0
////                fillMode: Image.PreserveAspectFit
////            }
////        }
//    }

    Row {
        id: row
        x: 134
        y: 599
        width: 1104
        height: 70
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 25
        anchors.bottomMargin: 35

        MenuButton {
            id: btnPengenalan
            text: qsTr("Introduksi")
            btnIconSource: "../../images/open-book.png"
            isActiveMenu: false
            onClicked: {
                btnPengenalan.isActiveMenu = true
                btnSkematik.isActiveMenu = false
                btnLayout.isActiveMenu = false
                btnMonitoring.isActiveMenu = false
                btnControl.isActiveMenu = false
//                rectangle.push = rectangleIntroduksi
                stackView.push(Qt.resolvedUrl("../pages/windowPage/brakeIntroduksi.qml"))

            }
        }

        MenuButton {
            id: btnSkematik
            text: qsTr("Skematik")
            btnIconSource: "../../images/drawing.png"
            isActiveMenu: false
            onClicked: {
                btnPengenalan.isActiveMenu = false
                btnSkematik.isActiveMenu = true
                btnLayout.isActiveMenu = false
                btnMonitoring.isActiveMenu = false
                btnControl.isActiveMenu = false
                stackView.push(Qt.resolvedUrl("../pages/windowPage/brakeSkematik.qml"))

            }
        }

        MenuButton {
            id: btnLayout
            text: qsTr("Layout")
            btnIconSource: "../../images/layout.png"
            isActiveMenu: false
            onClicked: {
                btnPengenalan.isActiveMenu = false
                btnSkematik.isActiveMenu = false
                btnLayout.isActiveMenu = true
                btnMonitoring.isActiveMenu = false
                btnControl.isActiveMenu = false
                stackView.push(Qt.resolvedUrl("../pages/windowPage/brakeLayout.qml"))

            }
        }

        MenuButton {
            id: btnMonitoring
            text: qsTr("Monitoring")
            btnIconSource: "../../images/speedometer.png"
            isActiveMenu: false
            onClicked: {
                btnPengenalan.isActiveMenu = false
                btnSkematik.isActiveMenu = false
                btnLayout.isActiveMenu = false
                btnMonitoring.isActiveMenu = true
                btnControl.isActiveMenu = false
                stackView.push(Qt.resolvedUrl("../control/componentTest.qml"))

            }
        }

        MenuButton {
            id: btnControl
            text: qsTr("Control")
            btnIconSource: "../../images/options.png"
            isActiveMenu: false
            onClicked: {
                btnPengenalan.isActiveMenu = false
                btnSkematik.isActiveMenu = false
                btnLayout.isActiveMenu = false
                btnMonitoring.isActiveMenu = false
                btnControl.isActiveMenu = true
                stackView.push(Qt.resolvedUrl("../pages/windowPage/brakeControl.qml"))

            }
        }


//    StackView {
//        visible: true
//        id: stackView
//        anchors.fill: parent
//        focusPolicy: Qt.NoFocus
//        anchors.rightMargin: 120
//        clip: true
//        anchors.bottomMargin: 140
//        anchors.leftMargin: 120
//        anchors.topMargin: 140

//        MouseArea{
//            //untuk membuat buttonclickable
//        }
        

    }

//    Rectangle {
//        id: rectangleIntroduksi
//        color: "#ffffff"
//        radius: 20
//        anchors.left: parent.left
//        anchors.right: parent.right
//        anchors.top: parent.top
//        anchors.bottom: parent.bottom
//        anchors.rightMargin: 120
//        anchors.leftMargin: 120
//        anchors.bottomMargin: 140
//        anchors.topMargin: 140

//        Image {
//            id: image1
//            anchors.fill: parent
//            source: "../../images/modul_images/pengenalan.jpeg"
//            anchors.rightMargin: 15
//            anchors.leftMargin: 15
//            anchors.bottomMargin: 15
//            anchors.topMargin: 15
//            fillMode: Image.Stretch

//            CustomRoundButton{
//                id: komponenA
//                anchors.left: parent.left
//                anchors.top: parent.top
//                anchors.bottom: parent.bottom
//                anchors.topMargin: 400
//                anchors.bottomMargin: 400
//                anchors.leftMargin: 400
//            }

//            CustomRoundButton {
//                id: komponenA1
//            }

//            CustomRoundButton {
//                id: komponenA2
//                anchors.left: parent.left
//                anchors.top: parent.top
//                anchors.bottom: parent.bottom
//                anchors.leftMargin: 200
//                anchors.bottomMargin: 80
//                anchors.topMargin: 80
//            }

//            CustomRoundButton {
//                id: komponenA3
//                anchors.top: parent.top
//                anchors.topMargin: 80
//            }
//        }
//    }
//}

}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.66;height:720;width:1280}
}
##^##*/
