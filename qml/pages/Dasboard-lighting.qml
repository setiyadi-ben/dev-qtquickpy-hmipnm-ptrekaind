import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import "../control" //import folder qml untuk kustom button
import "../pages/windowPage" //import halaman swipeview

Item {
    id: item1
    Image {
        id: image
        anchors.fill: parent
        source: "../../images/SUBMENU.png"
        fillMode: Image.PreserveAspectCrop
    }

    Row {
        id: row
        x: 134
        y: 615
        width: 621
        height: 70
        anchors.bottom: parent.bottom
        spacing: 25
        MenuButton {
            id: btnPengenalan
            text: qsTr("Introduction")
            isActiveMenu: false
            btnIconSource: "../../images/open-book.png"
            onClicked: {
                    btnPengenalan.isActiveMenu = true
                    btnSkematik.isActiveMenu = false

                    btnControl.isActiveMenu = false
    //                rectangle.push = rectangleIntroduksi
                    stackView.push(Qt.resolvedUrl("../pages/windowPage/lightingIntroduksi.qml"))

                }
        }

        MenuButton {
            id: btnSkematik
            text: qsTr("Schematic")
            isActiveMenu: false
            btnIconSource: "../../images/drawing.png"
            onClicked: {
                    btnPengenalan.isActiveMenu = false
                    btnSkematik.isActiveMenu = true

                    btnControl.isActiveMenu = false
                    stackView.push(Qt.resolvedUrl("../pages/windowPage/lightingSkematik.qml"))

                }
        }



        MenuButton {
            id: btnControl
            text: qsTr("Monitoring")
            isActiveMenu: false
            btnIconSource: "../../images/options.png"
            onClicked: {
                btnPengenalan.isActiveMenu = false
                btnSkematik.isActiveMenu = false

                btnControl.isActiveMenu = true
                stackView.push(Qt.resolvedUrl("../pages/windowPage/lightingMonitoring.qml"))

            }
        }
        anchors.bottomMargin: 35
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: textJudul
        width: 688
        height: 117
        text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:36pt; font-weight:600;\">Modul Pembelajaran</span></p>\n<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:72pt; font-weight:600; font-style:italic; text-decoration: underline;\">Lighting System</span></p></body></html>"
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 24
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
        textFormat: Text.RichText
    }

    Rectangle {
        id: rectangle
        width: 350
        height: 80
        opacity: 1
        color: "#ffffff"
        radius: 30
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 20
        Image {
            id: pnm
            width: 82
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "../../images/Logo Politeknik Negeri Madiun.png"
            fillMode: Image.PreserveAspectFit
            anchors.bottomMargin: 10
            anchors.leftMargin: 20
            anchors.topMargin: 10
        }

        Image {
            id: inka
            width: 100
            anchors.left: pnm.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "../../images/logo-inka-border-putih.png"
            fillMode: Image.PreserveAspectFit
            anchors.bottomMargin: 0
            anchors.leftMargin: 3
            anchors.topMargin: 0
        }

        Image {
            id: reka
            width: 100
            anchors.left: inka.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "../../images/Logo-Reka-1000.png"
            fillMode: Image.PreserveAspectFit
            anchors.bottomMargin: 0
            anchors.leftMargin: 20
            anchors.topMargin: 0
        }
        anchors.topMargin: 35
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.5;height:720;width:1280}
}
##^##*/
