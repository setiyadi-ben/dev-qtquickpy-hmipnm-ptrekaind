import QtQuick 2.15
import "../../control"
import "../../pages"
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject


Item {
    Rectangle {
        id: rectangle
        width: 892
        height: 400
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
            anchors.leftMargin: 30
            anchors.topMargin: 20
            textFormat: Text.RichText
        }

//        Text {
//            id: textValue1_volt
//            width: 163
//            height: 30
//            color: "#ffffff"
//            text: qsTr("Tegangan (Volt)")
//            anchors.left: parent.left
//            anchors.top: parent.top
//            font.pixelSize: 24
//            horizontalAlignment: Text.AlignHCenter
//            font.bold: true
//            font.family: "Times New Roman"
//            anchors.leftMargin: 49
//            anchors.topMargin: 126
//        }

//        Rectangle {
//            id: value1_volt
//            width: 200
//            height: 62
//            color: "#ffffff"
//            radius: 10
//            anchors.left: parent.left
//            anchors.top: parent.top
//            anchors.topMargin: 169
//            anchors.leftMargin: 31

//            RandomGenerator{
//                anchors.verticalCenter: parent.verticalCenter
//                anchors.horizontalCenter: parent.horizontalCenter

//            }
//        }

//        Text {
//            id: textValue2_amp
//            height: 30
//            color: "#ffffff"
//            text: qsTr("Arus (Ampere)")
//            anchors.left: textValue1_volt.right
//            anchors.right: textValue3_resistor.left
//            anchors.top: parent.top
//            font.pixelSize: 24
//            horizontalAlignment: Text.AlignHCenter
//            anchors.rightMargin: 152
//            anchors.leftMargin: 153
//            font.bold: true
//            anchors.topMargin: 128
//            font.family: "Times New Roman"
//        }

//        Rectangle {
//            id: value2_amp
//            width: 201
//            height: 62
//            color: "#ffffff"
//            radius: 10
//            anchors.left: value1_volt.right
//            anchors.right: value3_resistor.left
//            anchors.top: parent.top
//            anchors.rightMargin: 116
//            anchors.leftMargin: 309
        //            anchors.topMargin: 169

        //            RandomGenerator {
        //                anchors.verticalCenter: parent.verticalCenter
        //                anchors.horizontalCenter: parent.horizontalCenter
        //            }
        //        }

        //        Text {
        //            id: textValue3_resistor
        //            x: 680
        //            width: 163
        //            height: 30
        //            color: "#ffffff"
        //            text: qsTr("Hambatan (Resistor)")
        //            anchors.right: parent.right
        //            anchors.top: parent.top
        //            font.pixelSize: 24
        //            horizontalAlignment: Text.AlignHCenter
        //            anchors.rightMargin: 49
        //            font.bold: true
        //            anchors.topMargin: 126
        //            font.family: "Times New Roman"
        //        }

        //        Rectangle {
        //            id: value3_resistor
        //            x: 656
        //            width: 200
        //            height: 62
        //            color: "#ffffff"
        //            radius: 10
        //            anchors.right: parent.right
        //            anchors.top: parent.top
        //            anchors.topMargin: 169
        //            anchors.rightMargin: 31

        //            RandomGenerator {
        //                anchors.verticalCenter: parent.verticalCenter
        //                anchors.horizontalCenter: parent.horizontalCenter
        //            }
        //        }
    }

    MenuButton {
        id: btnBack
        text: qsTr("Kembali")
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        btnIconSource: "../../../images/go-back-arrow.png"
        anchors.rightMargin: 20
        anchors.bottomMargin: 40
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-gardutraksi.qml"))
        }
    }

    Rectangle {
        id: electrictalStatus
        width: 439
        height: 80
        color: "#ffffff"
        radius: 10
        anchors.left: parent.left
        anchors.top: parent.top
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
            anchors.topMargin: 0
            textFormat: Text.RichText
            anchors.leftMargin: 0
        }

        Image {
            id: image
            width: 100
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }
        anchors.leftMargin: 145
        anchors.topMargin: 158
    }

    Rectangle {
        id: deviceStatus
        x: 696
        width: 439
        height: 80
        color: "#ffffff"
        radius: 10
        anchors.right: parent.right
        anchors.top: parent.top
        Text {
            id: text3
            width: 312
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600;\">Device Status</span></p></body></html>"
            anchors.left: image2.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            textFormat: Text.RichText
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }

        Image {
            id: image2
            width: 100
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }
        anchors.rightMargin: 145
        anchors.topMargin: 158
    }

    Rectangle {
        id: teganganAc
        width: 439
        height: 80
        color: "#ffffff"
        radius: 10
        anchors.left: parent.left
        anchors.top: electrictalStatus.bottom
        anchors.leftMargin: 145
        Text {
            id: text4
            width: 185
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600;\">Tegangan AC</span></p></body></html>"
            anchors.left: image3.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            textFormat: Text.RichText
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }

        Image {
            id: image3
            width: 100
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }
        anchors.topMargin: 80
    }

    Rectangle {
        id: teganganDc
        x: 696
        width: 439
        height: 80
        color: "#ffffff"
        radius: 10
        anchors.right: parent.right
        anchors.top: deviceStatus.bottom
        Text {
            id: text5
            width: 185
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:26pt; font-weight:600;\">Tegangan </span><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600;\">DC</span></p></body></html>"
            anchors.left: image4.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            textFormat: Text.RichText
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }

        Image {
            id: image4
            width: 100
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }
        anchors.rightMargin: 145
        anchors.topMargin: 80
    }

    Rectangle {
        id: arusAc
        height: 80
        color: "#ffffff"
        radius: 10
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 696
        anchors.bottomMargin: 162
        anchors.leftMargin: 145
        Text {
            id: text6
            width: 185
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600;\">Arus AC</span></p></body></html>"
            anchors.left: image5.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            textFormat: Text.RichText
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }

        Image {
            id: image5
            width: 100
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }
    }

    Rectangle {
        id: arusDc
        height: 80
        color: "#ffffff"
        radius: 10
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 696
        anchors.bottomMargin: 162
        Text {
            id: text7
            width: 185
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600;\">Arus DC</span></p></body></html>"
            anchors.left: image6.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            textFormat: Text.RichText
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }

        Image {
            id: image6
            width: 100
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }
        anchors.rightMargin: 145
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.5;height:720;width:1280}D{i:4}D{i:7}D{i:10}D{i:13}
D{i:16}D{i:19}
}
##^##*/
