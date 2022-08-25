import QtQuick 2.15
import "../../control"
import "../../pages"
import QtQuick.Controls 2.3
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import QtQuick.Extras 1.4

Item {
    id: item1
    Connections{
        target: backend

        function onSetName(name){
            sensorValue2.text = name
        }

        function onSetHsbc(hsbc){
            sensorValue1.text = hsbc
        }

        function onSetGenset(genset){
            sensorValue.text = genset
        }

        function onSetSensor(acv){
            sensorValue2.text = acv
        }
        //        function onPrintTime(time){
        //            tableDate.text = time
        //        }
        //        function onIsVisible(isVisible){
        //            rectangleVisible.visible = isVisible
        //        }
    }

    Rectangle {
        id: rectangle
        anchors.fill: parent
        color: "#282c34"
    }

    MenuButton {
        id: btnBack
        text: qsTr("Kembali")
        anchors.right: parent.right
        anchors.top: grid.bottom
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 40
        anchors.topMargin: 20
        btnIconSource: "../../../images/go-back-arrow.png"
        anchors.rightMargin: 20
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-gardutraksi.qml"))
        }
    }

    Text {
        id: textJudul
        color: "#ffffff"
        text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Rockwell Extra Bold','SolidWorks GDT','Segoe UI Black'; font-size:28pt; font-weight:600; color:#ffffff;\">Monitoring &amp; Control</span></p></body></html>"
        anchors.left: parent.left
        anchors.top: parent.top
        font.pixelSize: 12
        wrapMode: Text.NoWrap
        anchors.leftMargin: 30
        anchors.topMargin: 20
        textFormat: Text.RichText
        font.family: "Times New Roman"
    }

    GroupBox {
        id: groupBoxSwitch
        x: 53
        y: 193
        width: 350
        height: 181
        contentWidth: 0
        spacing: 6
        title: qsTr("Group Box")

        Text {
            id: switchHscb
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'MS Shell Dlg 2','Modern'; font-size:18pt; font-weight:600; color:#ffffff;\">Switch HSCB</span></p></body></html>"
            anchors.left: parent.left
            anchors.top: genset.bottom
            font.pixelSize: 12
            anchors.topMargin: 20
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.leftMargin: 20
            textFormat: Text.RichText

            RoundButton {
                id: on_roundButton1
                text: "On"
                anchors.right: parent.right
                onPressed: {
                    backend.hsbcActive(sensorValue1.text)
                }
            }

            RoundButton {
                id: off_roundButton1
                text: "Off"
                anchors.right: on_roundButton1.left
                anchors.rightMargin: 5
                onPressed: {
                    backend.hsbcInactive(sensorValue1.text)
                }
            }
        }

        Text {
            id: genset
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'MS Shell Dlg 2','Modern'; font-size:18pt; font-weight:600; color:#ffffff;\">Genset</span></p></body></html>"
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 30
            anchors.leftMargin: 20
            textFormat: Text.RichText

            RoundButton {
                id: on_roundButton
                text: "On"
                anchors.right: parent.right
                anchors.rightMargin: 0
                onPressed: {
                    backend.gensetActive(sensorValue.text)
                    //ini hanya trik supaya berkedip
                    backend.teganganAc(sensorValue2.text)
                    backend.teganganDc(sensorValue3.text)
                    backend.arusAc(sensorValue4.text)
                    backend.arusDc(sensorValue5.text)
                }
            }

            RoundButton {
                id: off_roundButton
                text: "Off"
                anchors.right: on_roundButton.left
                anchors.rightMargin: 5
                onPressed: {
                    backend.gensetInactive(sensorValue.text)
                    //ini hanya trik supaya berkedip
                    backend.teganganAc(sensorValue2.text)
                     backend.gensetInactive(sensorValue3.text)
                    backend.teganganAc(sensorValue4.text)
                    backend.teganganAc(sensorValue5.text)

                }
            }
        }
    }

    Grid{
        id: grid
        y: 158
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        bottomPadding: 25
        anchors.leftMargin: 454
        anchors.bottomMargin: 120
        anchors.topMargin: 100
        anchors.rightMargin: 136
        flow: Grid.LeftToRight
        verticalItemAlignment: Grid.AlignVCenter
        columns: 2
        rows: 3
        topPadding: 60
        clip: false
        padding: 0
        rightPadding: 0
        leftPadding: 35
        spacing: 60
        Rectangle {
            id: powerSource
            width: 283
            height: 60
            color: "#ffffff"
            radius: 10
            Text {
                id: power
                x: 79
                y: 18
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:12pt; font-weight:600;\">Power Source</span></p></body></html>"
                font.pixelSize: 12
                font.family: "DF7seg"
                textFormat: Text.RichText
            }

            Image {
                id: image
                x: 22
                width: 51
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "../../../images/power-plant.png"
                anchors.topMargin: 8
                anchors.bottomMargin: 4
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: sensorValue
                x: 86
                y: 75
                color: "white"
                text: qsTr("PLN Powered")
                anchors.top: powerSource.bottom
                font.bold: true
                font.pointSize: 14
                anchors.horizontalCenter: powerSource.horizontalCenter
                anchors.topMargin: 15
            }
        }


        Rectangle {
            id: hsbcIndicator
            width: 283
            height: 60
            color: "#ffffff"
            radius: 10
            Text {
                id: hsbc
                x: 79
                y: 18
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:12pt; font-weight:600;\">HSBC Indicator</span></p></body></html>"
                font.pixelSize: 12
                textFormat: Text.RichText
            }

            Image {
                id: image1
                x: 22
                width: 51
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "../../../images/breaker.png"
                anchors.topMargin: 8
                anchors.bottomMargin: 4
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: sensorValue1
                x: 111
                y: 75
                color: "#ffffff"
                text: qsTr("Open")
                anchors.top: hsbcIndicator.bottom
                font.pointSize: 14
                font.bold: true
                anchors.topMargin: 15
                anchors.horizontalCenter: hsbcIndicator.horizontalCenter
                textFormat: Text.AutoText
            }
        }

        Rectangle {
            id: acVoltage
            width: 283
            height: 60
            color: "#ffffff"
            radius: 10
            Text {
                x: 79
                y: 18
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:12pt; font-weight:600;\">AC Voltage</span></p></body></html>"
                font.pixelSize: 12
                textFormat: Text.RichText
            }

            Image {
                id: image2
                x: 22
                width: 51
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "../../../images/alternate.png"
                anchors.topMargin: 8
                anchors.bottomMargin: 4
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: sensorValue2
                x: 73
                y: 75
                color: "#ffffff"
                text: "JsRandInput"
                anchors.top: acVoltage.bottom
                font.bold: true
                anchors.topMargin: 15
                anchors.horizontalCenterOffset: 0
                font.pointSize: 14
                anchors.horizontalCenter: acVoltage.horizontalCenter
                textFormat: Text.AutoText
                Timer{
                    interval: 500;
                    repeat: true;
                    running: true;
    //                triggeredOnStart: true //autostart

                    //fungsi untuk mendapatkan randomNumber
                    // Thanks to Yogi PNM untuk logika JS
                    // Modified by Setiyadi_Ben 15/08/22

                    function randomNumber(min, max) {
                        return Math.floor(Math.random() * (max - min) + min);
                    }

                    function set(){
                        var value = randomNumber(375, 385); //isikan sesuai range number
                        sensorValue2.text = value;
                        }

                    onTriggered: set();
                }
            }
        }

        Rectangle {
            id: dcVoltage
            width: 283
            height: 60
            color: "#ffffff"
            radius: 10
            Text {
                id: dcv
                x: 79
                y: 18
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:12pt; font-weight:600;\">DC Voltage</span></p></body></html>"
                font.pixelSize: 12
                textFormat: Text.RichText
            }

            Image {
                id: image3
                x: 22
                width: 51
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "../../../images/dc.png"
                anchors.topMargin: 8
                anchors.bottomMargin: 4
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: sensorValue3
                x: 50
                y: 75
                color: "#ffffff"
                text: "JsRandInput"
                anchors.top: dcVoltage.bottom
                font.bold: true
                font.pointSize: 14
                anchors.topMargin: 15
                anchors.horizontalCenter: dcVoltage.horizontalCenter
                textFormat: Text.AutoText
                Timer{
                    interval: 500;
                    repeat: true;
                    running: true;
    //                triggeredOnStart: true //autostart

                    //fungsi untuk mendapatkan randomNumber
                    // Thanks to Yogi PNM untuk logika JS
                    // Modified by Setiyadi_Ben 15/08/22

                    function randomNumber(min, max) {
                        return Math.floor(Math.random() * (max - min) + min);
                    }

                    function set(){
                        var value = randomNumber(740, 755); //isikan sesuai range number
                        sensorValue3.text = value;
                        }

                    onTriggered: set();
                }
            }
        }

        Rectangle {
            id: acCurrent
            width: 283
            height: 60
            color: "#ffffff"
            radius: 10
            Text {
                id: acc
                x: 79
                y: 18
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:12pt; font-weight:600;\">AC Current</span></p></body></html>"
                font.pixelSize: 12
                textFormat: Text.RichText
            }

            Image {
                id: image4
                x: 22
                width: 51
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "../../../images/alternate.png"
                anchors.topMargin: 8
                anchors.bottomMargin: 4
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: sensorValue4
                x: 50
                y: 70
                width: 149
                color: "#ffffff"
                text: "JsRandInput"
                anchors.top: acCurrent.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.pointSize: 14
                anchors.topMargin: 15
                anchors.horizontalCenter: acCurrent.horizontalCenter
                textFormat: Text.AutoText
                Timer{
                    interval: 500;
                    repeat: true;
                    running: true;
    //                triggeredOnStart: true //autostart

                    //fungsi untuk mendapatkan randomNumber
                    // Thanks to Yogi PNM untuk logika JS
                    // Modified by Setiyadi_Ben 15/08/22

                    function randomNumber(min, max) {
                        return Math.floor(Math.random() * (max - min) + min);
                    }

                    function set(){
                        var value = randomNumber(195, 210); //isikan sesuai range number
                        sensorValue4.text = value;
                        }

                    onTriggered: set();
                }
            }
        }

        Rectangle {
            id: dcCurrent
            width: 283
            height: 60
            color: "#ffffff"
            radius: 10
            Text {
                id: dcc
                x: 79
                y: 18
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:12pt; font-weight:600;\">DC Current</span></p></body></html>"
                font.pixelSize: 12
                textFormat: Text.RichText
            }

            Image {
                id: image5
                x: 22
                width: 51
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "../../../images/dc.png"
                anchors.topMargin: 8
                anchors.bottomMargin: 4
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: sensorValue5
                x: 50
                y: 70
                width: 149
                color: "#ffffff"
                text: "JsRandInput"
                anchors.top: dcCurrent.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.pointSize: 14
                anchors.topMargin: 15
                anchors.horizontalCenter: dcCurrent.horizontalCenter
                textFormat: Text.AutoText
                Timer{
                    interval: 500;
                    repeat: true;
                    running: true;
    //                triggeredOnStart: true //autostart

                    //fungsi untuk mendapatkan randomNumber
                    // Thanks to Yogi PNM untuk logika JS
                    // Modified by Setiyadi_Ben 15/08/22

                    function randomNumber(min, max) {
                        return Math.floor(Math.random() * (max - min) + min);
                    }

                    function set(){
                        var value = randomNumber(100, 115); //isikan sesuai range number
                        sensorValue5.text = value;
                        }

                    onTriggered: set();
                }
            }
        }

    }






}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}D{i:12}
}
##^##*/
