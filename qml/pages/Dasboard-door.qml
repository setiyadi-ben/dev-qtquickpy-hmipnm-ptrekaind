import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import "../control" //import folder qml untuk kustom button
import "../pages/windowPage" //import halaman swipeview

Item {
    Image {
        id: image
        anchors.fill: parent
        source: "../../images/not ready.jpg"
        fillMode: Image.PreserveAspectCrop
    }

    Row {
        id: row
        x: 134
        y: 599
        width: 1104
        height: 70
        anchors.bottom: parent.bottom
        spacing: 25
//        MenuButton {
//            id: btnPengenalan
//            text: qsTr("Introduksi")
//            isActiveMenu: false
//            btnIconSource: "../../images/open-book.png"
//            onClicked: {
//                    btnPengenalan.isActiveMenu = true
//                    btnSkematik.isActiveMenu = false
//                    btnLayout.isActiveMenu = false
//                    btnMonitoring.isActiveMenu = false
//                    btnControl.isActiveMenu = false
//    //                rectangle.push = rectangleIntroduksi
//                    stackView.push(Qt.resolvedUrl("../pages/windowPage/garduIntroduksi.qml"))

//                }
//        }

//        MenuButton {
//            id: btnSkematik
//            text: qsTr("Skematik")
//            isActiveMenu: false
//            btnIconSource: "../../images/drawing.png"
//            onClicked: {
//                    btnPengenalan.isActiveMenu = false
//                    btnSkematik.isActiveMenu = true
//                    btnLayout.isActiveMenu = false
//                    btnMonitoring.isActiveMenu = false
//                    btnControl.isActiveMenu = false
//                    stackView.push(Qt.resolvedUrl("../pages/windowPage/garduSkematik.qml"))

//                }
//        }

//        MenuButton {
//            id: btnLayout
//            text: qsTr("Layout")
//            isActiveMenu: false
//            btnIconSource: "../../images/layout.png"
//            onClicked: {
//                    btnPengenalan.isActiveMenu = false
//                    btnSkematik.isActiveMenu = false
//                    btnLayout.isActiveMenu = true
//                    btnMonitoring.isActiveMenu = false
//                    btnControl.isActiveMenu = false
//                    stackView.push(Qt.resolvedUrl("../pages/windowPage/garduLayout.qml"))

//                }
//        }

//        MenuButton {
//            id: btnMonitoring
//            text: qsTr("Monitoring")
//            isActiveMenu: false
//            btnIconSource: "../../images/speedometer.png"
//            onClicked: {
//                    btnPengenalan.isActiveMenu = false
//                    btnSkematik.isActiveMenu = false
//                    btnLayout.isActiveMenu = false
//                    btnMonitoring.isActiveMenu = true
//                    btnControl.isActiveMenu = false
//                    stackView.push(Qt.resolvedUrl("../control/componentTest.qml"))

//                }
//        }

//        MenuButton {
//            id: btnControl
//            text: qsTr("Control")
//            isActiveMenu: false
//            btnIconSource: "../../images/options.png"
//            onClicked: {
//                    btnPengenalan.isActiveMenu = false
//                    btnSkematik.isActiveMenu = false
//                    btnLayout.isActiveMenu = false
//                    btnMonitoring.isActiveMenu = false
//                    btnControl.isActiveMenu = true
//                    stackView.push(Qt.resolvedUrl("../pages/windowPage/brakeControl.qml"))

//                }
//        }
        anchors.bottomMargin: 35
        anchors.horizontalCenter: parent.horizontalCenter
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:720;width:1280}
}
##^##*/
