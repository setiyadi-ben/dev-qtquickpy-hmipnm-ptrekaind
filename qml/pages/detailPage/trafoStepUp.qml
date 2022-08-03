import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import "../../control" //import folder qml untuk kustom button
import "../../pages/windowPage" //import halaman swipeview

Item {
    Image {
        id: image
        anchors.fill: parent
        source: "../../../images/wp_gardutraksi.jpg"
        fillMode: Image.Stretch

        Page {
            id: page
            opacity: 0.649
            anchors.fill: parent
        }
    }

    MenuButton {
        id: btnNext
        text: qsTr("Selanjutnya")
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 40
        btnIconSource: "../../../images/next.png"
        anchors.rightMargin: 20
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-gardutraksi.qml"))
        }
    }

    MenuButton {
        id: btnBack
        text: qsTr("Kembali")
        anchors.right: btnNext.left
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 40
        btnIconSource: "../../../images/go-back-arrow.png"
        anchors.rightMargin: 20
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-gardutraksi.qml"))
        }
    }

    Rectangle {
        id: rectangle
        opacity: 0.7
        color: "#ffffff"
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 100
        anchors.leftMargin: 100
        anchors.bottomMargin: 144
        anchors.topMargin: 144
        radius: 10
        anchors.left: parent.left
        anchors.right: parent.right

        Text {
            id: textContext1
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:12pt; font-weight:600;\">Trafo Step Up</span></p>\n<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">berfungsi untuk menaikkan tegangan dari tegangan primer menjadi tegangan sekunder.</p></body></html>"
            anchors.left: image1.right
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: textContext2.top
            font.pixelSize: 12
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.WordWrap
            anchors.leftMargin: 15
            anchors.rightMargin: 28
            anchors.bottomMargin: 0
            anchors.topMargin: 24
            textFormat: Text.RichText
        }

        Image {
            id: image1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: textContext2.top
            horizontalAlignment: Image.AlignLeft
            source: "../../../images/sample_images/stepup.jpg"
            anchors.rightMargin: 769
            anchors.leftMargin: 18
            anchors.bottomMargin: 0
            anchors.topMargin: 24
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: textContext2
            y: 306
            height: 118
            text: qsTr("Text")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            anchors.rightMargin: 28
            anchors.leftMargin: 26
            anchors.bottomMargin: 8
            textFormat: Text.RichText
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}D{i:6}D{i:7}
}
##^##*/
