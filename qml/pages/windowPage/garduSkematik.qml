import QtQuick 2.15
import "../../control"
import "../../pages"
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import QtQuick.Extras 1.4

Item {

    Rectangle{
        id: rectangle
        anchors.fill: parent
        color: "#2f3136"

        Rectangle {
            id: recutangle
            color: "#cfcfcf"
            radius: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: textJudul.bottom
            anchors.bottom: parent.bottom
            anchors.rightMargin: 18
            anchors.leftMargin: 18
            anchors.bottomMargin: 106
            anchors.topMargin: 31
            AnimatedImage {
                id: animatedImage
                anchors.fill: parent
                source: "../../../images/modul_images/skematikTraksiAnimated.gif"
                autoTransform: false
                anchors.topMargin: 20
                playing: true
                activeFocusOnTab: true
                clip: true
                fillMode: Image.Stretch
                focus: true
                anchors.rightMargin: 20
                anchors.bottomMargin: 20
                anchors.leftMargin: 20
            }
        }

        MenuButton {
            id: btnBack
            text: qsTr("Kembali")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-gardutraksi.qml"))
            }
            btnIconSource: "../../../images/go-back-arrow.png"
            anchors.rightMargin: 20
            anchors.bottomMargin: 30
        }

        Text {
            id: textJudul
            color: "#ffffff"
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Rockwell Extra Bold','SolidWorks GDT','Segoe UI Black'; font-size:28pt; font-weight:600; color:#ffffff;\">Skematik Gardu Traksi (Single Line)</span></p></body></html>"
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 12
            wrapMode: Text.NoWrap
            anchors.topMargin: 20
            font.family: "Times New Roman"
            textFormat: Text.RichText
            anchors.leftMargin: 30
        }

        MenuButton {
            id: btnSkematikSingleLine
            x: 1051
            y: 627
            text: qsTr("Single Line Skema")
            anchors.right: btnBack.left
            anchors.bottom: parent.bottom
            anchors.rightMargin: 40
            isActiveMenu: true
            anchors.bottomMargin: 30
            onClicked: {
                btnSkematikMultiLine.isActiveMenu = false
                btnSkematikSingleLine.isActiveMenu = true
                stackView.push(Qt.resolvedUrl("../../../qml/pages/windowPage/garduSkematik.qml"))

            }
            btnIconSource: "../../../images/drawing.png"
        }

        MenuButton {
            id: btnSkematikMultiLine
            x: 1056
            y: 616
            text: qsTr("Multi Line PDF")
            anchors.right: btnSkematikSingleLine.left
            anchors.bottom: parent.bottom
            anchors.rightMargin: 40
            isActiveMenu: false
            anchors.bottomMargin: 30
            onClicked: {
                    btnSkematikMultiLine.isActiveMenu = true
                    btnSkematikSingleLine.isActiveMenu = false
                    stackView.push(Qt.resolvedUrl("../../../qml/pages/windowPage/garduSkematikPDFView.qml"))

                }
            btnIconSource: "../../../images/drawing.png"
        }

//        Image {
//            id: image
//            width: 1280
//            height: 720
//            anchors.verticalCenter: parent.verticalCenter
//            source: "../../../images/sample_images/sample1.png"
//            anchors.horizontalCenter: parent.horizontalCenter
//            fillMode: Image.PreserveAspectFit

//            StatusIndicator {
//                id: statusIndicator
//                anchors.left: parent.left
//                anchors.top: parent.top
//                anchors.leftMargin: 422
//                anchors.topMargin: 227
//            }
//        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}D{i:2}
}
##^##*/
