import QtQuick 2.15
import "../../control"
import "../../pages"
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import QtQuick.Extras 1.4

Item {
    id: item1

    Rectangle{
        id: rectangle
        anchors.fill: parent
        color: "#2f3136"

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

    MenuButton {
        id: btnBack
        text: qsTr("Kembali")
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        btnIconSource: "../../../images/go-back-arrow.png"
        anchors.rightMargin: 20
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-gardutraksi.qml"))
        }
    }

    Rectangle {
        id: recutangle
        x: 190
        y: 120
        width: 1100
        color: "#cfcfcf"
        height: 400; radius: 10
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        AnimatedImage {
            id: animatedImage
            anchors.fill: parent
            source: "../../../images/modul_images/skematikTraksiAnimated.gif"
            autoTransform: false
            clip: true
            anchors.rightMargin: 20
            anchors.leftMargin: 20
            anchors.bottomMargin: 20
            anchors.topMargin: 20
            activeFocusOnTab: true
            focus: true
            playing: true
        }

        StatusIndicator {
            id: statusIndicator_On
            y: 235
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 313
            anchors.bottomMargin: 133
        }

        StatusIndicator {
            id: statusIndicator_Off
            y: 235
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 272
            anchors.bottomMargin: 133
        }
    }

    Text {
        id: textJudul
        color: "#ffffff"
        text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Rockwell Extra Bold','SolidWorks GDT','Segoe UI Black'; font-size:28pt; font-weight:600; color:#ffffff;\">Skematik Gardu Traksi</span></p></body></html>"
        anchors.left: parent.left
        anchors.top: parent.top
        font.pixelSize: 12
        wrapMode: Text.NoWrap
        anchors.leftMargin: 30
        font.family: "Times New Roman"
        anchors.topMargin: 20
        textFormat: Text.RichText
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.33;height:720;width:1280}D{i:6}D{i:3}
}
##^##*/
