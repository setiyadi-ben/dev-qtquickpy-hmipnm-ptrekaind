import QtQuick 2.15
import "../../control"
import "../../pages"
import QtQuick.Controls 2.3

Item {
    Rectangle{
        id: rectangle
        color: "#2f3136"
        anchors.left: parent.left
        anchors.right: sideRect.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        clip: false


        Rectangle {
        id: borderRect
        width: 605
        color: "#cfcfcf"
        radius: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 180
        anchors.topMargin: 90
        anchors.leftMargin: 35

        Image {
        id: image
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        source: "../../../images/modul_images/pengenalan.jpeg"
        clip: true
        anchors.rightMargin: 15
        anchors.bottomMargin: 15
        anchors.topMargin: 15
        autoTransform: true
        anchors.leftMargin: 15
        fillMode: Image.PreserveAspectCrop
        }
        }

        Text {
            id: textJudul
            color: "#ffffff"
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Rockwell Extra Bold','SolidWorks GDT','Segoe UI Black'; font-size:28pt; font-weight:600; color:#ffffff;\">Introduksi Komponen</span></p></body></html>"
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 12
            wrapMode: Text.NoWrap
            clip: false
            anchors.topMargin: 20
            textFormat: Text.RichText
            font.family: "Times New Roman"
            anchors.leftMargin: 30
        }

        MenuButton {
            id: btnBack
            x: 1060
            y: 620
            text: qsTr("Kembali")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            btnIconSource: "../../../images/go-back-arrow.png"
            anchors.rightMargin: 20
            anchors.bottomMargin: 40
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-brake.qml"))
            }
        }

        DownloadButton {
            anchors.left: parent.left
            anchors.top: borderRect.bottom
            anchors.leftMargin: 450
            anchors.topMargin: 15
        }

        DownloadButton {
            y: 535
            text: "Informasi lebih lanjut"
            btnIconSource: "../../../images/information-button.png"
            anchors.left: parent.left
            anchors.top: borderRect.bottom
            anchors.topMargin: 15
            anchors.leftMargin: 233
            onClicked: animationMenu.running = true //mentrigger sideRect extend dan collapse
        }

        CustomRoundButton {
            id: komponenA
            anchors.left: parent.left
            anchors.top: parent.top
            onClicked: animationMenu.running = true //mentrigger sideRect extend dan collapse
            Text {
                id: text1
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:16pt; color:#ffffff;\">Main Reservoir</span></p></body></html>"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: 12
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                textFormat: Text.RichText
                anchors.leftMargin: 65
            }
            anchors.topMargin: 90
            clip: false
            anchors.leftMargin: 670
        }

        CustomRoundButton {
            id: komponenA1
            anchors.left: parent.left
            anchors.top: komponenA.bottom
            onClicked: animationMenu.running = true //mentrigger sideRect extend dan collapse
            Text {
                id: text2
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:16pt; color:#ffffff;\">Brake Pipe</span></p></body></html>"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: 12
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                textFormat: Text.RichText
                anchors.leftMargin: 65
            }
            anchors.topMargin: 20
            clip: false
            anchors.leftMargin: 670
        }

        CustomRoundButton {
            id: komponenA2
            anchors.left: parent.left
            anchors.top: komponenA1.bottom
            onClicked: animationMenu.running = true //mentrigger sideRect extend dan collapse
            Text {
                id: text3
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:16pt; color:#ffffff;\">Brake Cyclinder</span></p></body></html>"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: 12
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                textFormat: Text.RichText
                anchors.leftMargin: 65
            }
            anchors.topMargin: 20
            clip: false
            anchors.leftMargin: 670
        }
    }

    Rectangle {
        id: sideRect
        x: 661
        width: 0
        color: "#ffffff"
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        Text {
            id: textPenjelasan
            color: "#ffffff"
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Rockwell Extra Bold','SolidWorks GDT','Segoe UI Black'; font-size:16pt; font-weight:600; color:#000000;\">Penjelasan Komponen</span></p></body></html>"
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 12
            wrapMode: Text.NoWrap
            anchors.topMargin: 10
            textFormat: Text.RichText
            font.family: "Times New Roman"
            anchors.leftMargin: 30
        }

        PropertyAnimation {
            id: animationMenu
            target: sideRect
            property: "width"
            duration: 500
            easing.type: Easing.InOutQuint
            to: if(sideRect.width == 0) return 540; else return 0
        }

        Rectangle {
            id: item1_sideRect
            y: 48
            height: 200
            radius: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 30
            anchors.rightMargin: 30
            color: "#36393f"

            Rectangle {
                id: pict1
                width: 200
                color: "red"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 40
                anchors.leftMargin: 20
                anchors.bottomMargin: 20
            }

            ScrollView {
                id: scrollView
                ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
                anchors.left: pict1.right
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 20
                anchors.rightMargin: 30
                anchors.bottomMargin: 19
                Text {
                    id: textContent
                    x: 0
                    y: 0
                    width: 410
                    height: 161
                    visible: true
                    color: "#ffffff"
                    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, </p></body></html>"
                    font.pixelSize: 12
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.WordWrap
                    textFormat: Text.RichText
                    clip: true
                }
                anchors.topMargin: 20
                clip: true
                activeFocusOnTab: false
            }

            Text {
                id: textImg
                width: 200
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:14pt; color:#ffffff;\">Main Reservoir</span></p></body></html>"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: pict1.top
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.leftMargin: 20
                textFormat: Text.RichText
            }
        }

        Rectangle {
            id: item1_sideRect1
            y: 254
            height: 200
            color: "#36393f"
            radius: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 30
            Rectangle {
                id: pict2
                width: 200
                color: "green"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.topMargin: 40
                anchors.leftMargin: 20
            }

            ScrollView {
                id: scrollView1
                ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
                anchors.left: pict2.right
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 30
                anchors.bottomMargin: 19
                Text {
                    id: textContent1
                    x: 0
                    y: 0
                    width: 410
                    height: 161
                    visible: true
                    color: "#ffffff"
                    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, </p></body></html>"
                    font.pixelSize: 12
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.WordWrap
                    textFormat: Text.RichText
                    clip: true
                }
                anchors.topMargin: 20
                clip: true
                anchors.leftMargin: 20
                activeFocusOnTab: false
            }

            Text {
                id: textImg1
                width: 200
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:14pt; color:#ffffff;\">Brake Cylinder</span></p></body></html>"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: pict2.top
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                textFormat: Text.RichText
                anchors.leftMargin: 20
            }
            anchors.leftMargin: 30
        }

        Rectangle {
            id: item1_sideRect2
            y: 460
            height: 200
            color: "#36393f"
            radius: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 30
            Rectangle {
                id: pict3
                width: 200
                color: "orange"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.topMargin: 40
                anchors.leftMargin: 20
            }

            ScrollView {
                id: scrollView2
                ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
                anchors.left: pict3.right
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 30
                anchors.bottomMargin: 19
                Text {
                    id: textContent2
                    x: 0
                    y: 0
                    width: 410
                    height: 161
                    visible: true
                    color: "#ffffff"
                    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, Temanggung udane deres, </p></body></html>"
                    font.pixelSize: 12
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.WordWrap
                    textFormat: Text.RichText
                    clip: true
                }
                anchors.topMargin: 20
                clip: true
                anchors.leftMargin: 20
                activeFocusOnTab: false
            }

            Text {
                id: textImg2
                width: 200
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:14pt; color:#ffffff;\">Brake Cylinder</span></p></body></html>"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: pict3.top
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                textFormat: Text.RichText
                anchors.leftMargin: 20
            }
            anchors.leftMargin: 30
        }
        anchors.topMargin: 0
        clip: false
    }




}

/*##^##
Designer {
    D{i:0;autoSize:true;height:720;width:1280}D{i:16;invisible:true}
}
##^##*/
