import QtQuick 2.15
import "../../control"
import "../../pages"
import QtQuick.Controls 2.3


Item {
    id: item1
    Rectangle {
    id: rectangle
    color: "#282c34"
    radius: 10
    anchors.fill: parent
    Text {
    id: textJudul
    color: "#ffffff"
    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:9.75pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Rockwell Extra Bold','SolidWorks GDT','Segoe UI Black'; font-size:28pt; font-weight:600; color:#ffffff;\">Monitoring Value</span></p></body></html>"
    anchors.left: parent.left
    anchors.top: parent.top
    font.pixelSize: 12
    wrapMode: Text.NoWrap
    font.family: "Times New Roman"
    anchors.topMargin: 20
    anchors.leftMargin: 30
    textFormat: Text.RichText
    }
    }

    MenuButton {
    id: btnBack
    text: qsTr("Kembali")
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    btnIconSource: "../../../images/go-back-arrow.png"
    onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-gardutraksi.qml"))
            }
    anchors.bottomMargin: 40
    anchors.rightMargin: 20
    }

    Rectangle {
    id: teganganDc
    x: 696
    width: 439
    height: 80
    color: "#ffffff"
    radius: 10
    Text {
    id: text5
    width: 185
    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:26pt; font-weight:600;\">Tegangan </span><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600;\">DC</span></p></body></html>"
    anchors.left: image4.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    font.pixelSize: 12
    verticalAlignment: Text.AlignVCenter
    anchors.bottomMargin: 0
    anchors.topMargin: 0
    anchors.leftMargin: 0
    textFormat: Text.RichText
    }

    Image {
    id: image4
    width: 100
    anchors.left: parent.left
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    source: "qrc:/qtquickplugin/images/template_image.png"
    anchors.bottomMargin: 0
    fillMode: Image.PreserveAspectFit
    anchors.topMargin: 0
    anchors.leftMargin: 0
    }
    }

    Rectangle {
    id: arusAc
    height: 80
    color: "#ffffff"
    radius: 10
    Text {
    id: text6
    width: 185
    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600;\">Arus AC</span></p></body></html>"
    anchors.left: image5.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    font.pixelSize: 12
    verticalAlignment: Text.AlignVCenter
    anchors.bottomMargin: 0
    anchors.topMargin: 0
    anchors.leftMargin: 0
    textFormat: Text.RichText
    }

    Image {
    id: image5
    width: 100
    anchors.left: parent.left
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    source: "qrc:/qtquickplugin/images/template_image.png"
    anchors.bottomMargin: 0
    fillMode: Image.PreserveAspectFit
    anchors.topMargin: 0
    anchors.leftMargin: 0
    }
    }

    Rectangle {
        id: arusDc
        height: 80
        color: "#ffffff"
        radius: 10
        Text {
            id: text7
            width: 185
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600;\">Arus DC</span></p></body></html>"
            anchors.left: image6.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            anchors.leftMargin: 0
            textFormat: Text.RichText
        }

        Image {
            id: image6
            width: 100
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "qrc:/qtquickplugin/images/template_image.png"
            anchors.bottomMargin: 0
            fillMode: Image.PreserveAspectFit
            anchors.topMargin: 0
            anchors.leftMargin: 0
        }
    }

    GroupBox {
        id: groupBox
        height: 412
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 119
        anchors.rightMargin: 30
        anchors.leftMargin: 30
        anchors.verticalCenterOffset: -35
        title: qsTr("Group Box")

        Rectangle {
            id: electrictalStatus
            width: 439
            height: 80
            color: "#ffffff"
            radius: 10
            anchors.left: parent.left
            anchors.leftMargin: 30
            Text {
                id: text1
                width: 309
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600;\">Electrical Status</span></p></body></html>"
                anchors.left: image.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
                anchors.bottomMargin: 0
                anchors.leftMargin: 10
                anchors.topMargin: 0
                textFormat: Text.RichText
            }

            Image {
                id: image
                width: 100
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "qrc:/qtquickplugin/images/template_image.png"
                anchors.bottomMargin: 0
                fillMode: Image.PreserveAspectFit
                anchors.topMargin: 0
                anchors.leftMargin: 0
            }

            RandomGenerator{
                width: 169
                height: 50
                anchors.top: parent.top
                anchors.topMargin: 80
                anchors.horizontalCenter: parent.horizontalCenter
//                ColorAnimation: "white"

            }
        }

        Rectangle {
            id: deviceStatus
            x: 696
            width: 439
            height: 80
            color: "#ffffff"
            radius: 10
            anchors.right: parent.right
            anchors.rightMargin: 30
            Text {
                id: text3
                width: 312
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600;\">Device Status</span></p></body></html>"
                anchors.left: image2.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 10
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                textFormat: Text.RichText
            }

            Image {
                id: image2
                width: 100
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "qrc:/qtquickplugin/images/template_image.png"
                anchors.leftMargin: 0
                fillMode: Image.PreserveAspectFit
                anchors.bottomMargin: 0
                anchors.topMargin: 0
            }
            RandomGenerator{
                width: 169
                height: 50
                anchors.top: parent.top
                anchors.topMargin: 80
                anchors.horizontalCenter: parent.horizontalCenter
                //                ColorAnimation: "white"

            }
        }

        Rectangle {
            id: teganganAc
            width: 439
            height: 80
            color: "#ffffff"
            radius: 10
            anchors.left: parent.left
            anchors.top: electrictalStatus.bottom
            anchors.leftMargin: 30
            anchors.topMargin: 30
            Text {
                id: text4
                width: 185
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600;\">Tegangan AC</span></p></body></html>"
                anchors.left: image3.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 10
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                textFormat: Text.RichText
            }

            Image {
                id: image3
                width: 100
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "qrc:/qtquickplugin/images/template_image.png"
                anchors.leftMargin: 0
                fillMode: Image.PreserveAspectFit
                anchors.bottomMargin: 0
                anchors.topMargin: 0
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}D{i:18}D{i:22}
}
##^##*/
