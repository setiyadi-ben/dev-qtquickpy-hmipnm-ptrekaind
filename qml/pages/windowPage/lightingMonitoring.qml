import QtQuick 2.15
import "../../control"
import "../../pages"
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import QtQuick.Extras 1.4


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
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'Titillium Web'; font-size:8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Rockwell Extra Bold','SolidWorks GDT','Segoe UI Black'; font-size:28pt; font-weight:600; color:#ffffff;\">Monitoring </span></p></body></html>"
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 12
            wrapMode: Text.NoWrap
            font.family: "Times New Roman"
            anchors.leftMargin: 30
            anchors.topMargin: 20
            textFormat: Text.RichText
        }

        Image {
            id: image1
            x: 736
            y: 434
            width: 232
            height: 68
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: image
            x: 412
            y: 418
            width: 100
            height: 100
            source: "../../../images/modulLighting/627-6274584_digital-number-png-digital-clock-number-png-transparent.png"
            fillMode: Image.PreserveAspectFit
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
            stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-lighting.qml"))
        }
    }

    Rectangle {
        id: electrictalStatus
        width: 315
        height: 192
        color: "#ffffff"
        radius: 10
        anchors.left: parent.left
        anchors.top: parent.top
        Text {
            id: text1
            x: 123
            width: 69
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'Titillium Web'; font-size:8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600;\">RLP</span></p></body></html>"
            anchors.left: image.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            anchors.bottomMargin: 136
            anchors.topMargin: 0
            textFormat: Text.RichText
            anchors.leftMargin: 0
        }
        anchors.leftMargin: 93
        anchors.topMargin: 158
    }

    Rectangle {
        x: 139
        y: 216
        width: 100
        height: 100
        color: "#ffffff"

        StatusIndicator {
            width: 66
            height: 100
            anchors.centerIn: parent
            color: "green"
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0
        }
    }

    Rectangle {
        id: electrictalStatus1
        width: 315
        height: 192
        color: "#ffffff"
        radius: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 158
        anchors.leftMargin: 483
        Text {
            id: text2
            x: 73
            width: 170
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'Titillium Web'; font-size:8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600;\">Head Lamp</span></p></body></html>"
            anchors.left: image.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 0
            anchors.bottomMargin: 136
            anchors.leftMargin: 0
            textFormat: Text.RichText
        }
    }

    Rectangle {
        id: electrictalStatus2
        width: 315
        height: 192
        color: "#ffffff"
        radius: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 158
        anchors.leftMargin: 875
        Text {
            id: text3
            x: 81
            width: 69
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'Titillium Web'; font-size:8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600;\">Fog Lamp</span></p></body></html>"
            anchors.left: image.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 0
            anchors.bottomMargin: 136
            anchors.leftMargin: 0
            textFormat: Text.RichText
        }
    }

    Rectangle {
        id: electrictalStatus3
        width: 320
        height: 86
        color: "#ffffff"
        radius: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 426
        anchors.leftMargin: 296
        Text {
            id: text4
            x: 92
            width: 105
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'Titillium Web'; font-size:8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600; color:#ffffff;\">Voltmeter</span></p></body></html>"
            anchors.left: image.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 148
            anchors.bottomMargin: -12
            anchors.leftMargin: 0
            textFormat: Text.RichText
        }

        Rectangle {
            id: rectangle1
            x: 0
            y: 0
            width: 320
            height: 86
            color: "#ffffff"


            Image {
                id: image14
                x: 76
                y: -7
                width: 168
                height: 100
                source: "../../../images/modulLighting/627-6274584_digital-number-png-digital-clock-number-png-transparent.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: rectangle2
            x: 387
            y: 0
            width: 320
            height: 86
            color: "#ffffff"
        }
    }

    Rectangle {
        id: electrictalStatus4
        width: 320
        height: 86
        color: "#ffffff"
        radius: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 426
        anchors.leftMargin: 684
        Text {
            id: text5
            x: 64
            width: 105
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'Titillium Web'; font-size:8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Montserrat'; font-size:22pt; font-weight:600; color:#ffffff;\">Amperemeter</span></p></body></html>"
            anchors.left: image.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 144
            anchors.bottomMargin: -8
            anchors.leftMargin: 0
            textFormat: Text.RichText
        }
    }

    Rectangle {
        x: 255
        y: 216
        width: 100
        height: 100
        color: "#ffffff"
        StatusIndicator {
            width: 66
            height: 100
            color: "#008000"
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenterOffset: 0
        }
    }

    Rectangle {
        x: 528
        y: 216
        width: 100
        height: 100
        color: "#ffffff"
        StatusIndicator {
            width: 66
            height: 100
            color: "#008000"
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenterOffset: 0
        }
    }

    Rectangle {
        x: 644
        y: 216
        width: 100
        height: 100
        color: "#ffffff"
        StatusIndicator {
            width: 66
            height: 100
            color: "#008000"
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenterOffset: 0
        }
    }

    Rectangle {
        x: 926
        y: 216
        width: 100
        height: 100
        color: "#ffffff"
        StatusIndicator {
            width: 66
            height: 100
            color: "#008000"
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenterOffset: 0
        }
    }

    Rectangle {
        x: 1042
        y: 216
        width: 100
        height: 100
        color: "#ffffff"
        StatusIndicator {
            width: 66
            height: 100
            color: "#008000"
            anchors.centerIn: parent
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenterOffset: 0
        }
    }

    Image {
        id: image15
        x: 760
        y: 419
        width: 168
        height: 100
        source: "../../../images/modulLighting/627-6274584_digital-number-png-digital-clock-number-png-transparent.png"
        fillMode: Image.PreserveAspectFit
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.33;height:720;width:1280}D{i:6}D{i:12}D{i:16}
D{i:14}D{i:19}
}
##^##*/
