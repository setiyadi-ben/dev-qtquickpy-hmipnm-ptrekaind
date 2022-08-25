import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Extras 1.4
import "../../control"
import "../../pages"

Item {
    id: item1
    Rectangle {
        id: rectangle
        color: "#3f3f3f"
        anchors.fill: parent

        Image {
            id: imageTmp
            y: 129
            width: 294
            height: 100
            anchors.left: parent.left
            source: "../../../images/modul_images/Display LCD.png"
            anchors.leftMargin: 514
            fillMode: Image.PreserveAspectFit

            Rectangle {
                id: rectangle3
                x: 32
                y: 30
                width: 169
                height: 69
                color: "#00000000"
                anchors.bottomMargin: 87
                TextEdit {
                    id: dispTmp
                    text: "0000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 7
                    anchors.rightMargin: -5
                    font.family: "DF7seg"
                    anchors.leftMargin: 55
                    anchors.bottomMargin: 12
                    font.pointSize: 30
                }
                TextInput {
                    id: inputTmp
                    x: 68
                    width: 105
                    height: 24
                    text: "0000"
                    anchors.top: parent.top
                    font.pixelSize: 20
                    anchors.topMargin: 74
                }
            }

            Text {
                id: text5
                color: "#ffffff"
                text: qsTr("TEMPERATURE")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                anchors.rightMargin: 3
                anchors.leftMargin: 1
                anchors.bottomMargin: 130
                anchors.topMargin: -23
                font.bold: true
                font.family: "Verdana"
            }
        }
        Image {
            id: imagePrs
            y: 423
            width: 233
            height: 100
            anchors.left: parent.left
            source: "../../../images/modul_images/Display LCD.png"
            anchors.leftMargin: 545
            fillMode: Image.PreserveAspectFit

            Rectangle {
                id: rectangle2
                x: 55
                y: 48
                width: 169
                height: 45
                color: "#00000000"
                anchors.bottomMargin: 87
                TextEdit {
                    id: dispPrs
                    x: 1
                    y: 5
                    text: "0000"
                    anchors.left: rectangle2.left
                    anchors.right: rectangle2.right
                    anchors.top: rectangle2.top
                    anchors.bottom: rectangle2.bottom
                    anchors.topMargin: -13
                    anchors.rightMargin: 39
                    font.family: "DF7seg"
                    anchors.leftMargin: 4
                    anchors.bottomMargin: 15
                    font.pointSize: 30
                }
                TextInput {
                    id: inputPrs
                    x: 14
                    width: 105
                    height: 24
                    text: "0000"
                    anchors.top: parent.top
                    font.pixelSize: 20
                    anchors.leftMargin: 120
                    anchors.topMargin: 53
                    anchors.bottomMargin: 87
                }
            }
        }

        StatusIndicator {
            id: statusIndicator
            x: 932
            y: 154
            width: 50
            height: 50
            color: "#ffff00"
            anchors.right: parent.right
            anchors.rightMargin: 298
        }

        StatusIndicator {
            id: statusIndicator1
            x: 932
            y: 300
            width: 50
            height: 50
            color: "#aa5500"
            anchors.right: parent.right
            anchors.rightMargin: 298
        }

        StatusIndicator {
            id: statusIndicator2
            x: 932
            y: 448
            width: 50
            height: 50
            color: "#ffffff"
            anchors.right: parent.right
            anchors.rightMargin: 298

        }

        Text {
            id: text1
            x: 1000
            y: 165
            width: 80
            height: 27
            color: "#ffffff"
            text: qsTr("AC ON")
            anchors.right: parent.right
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            anchors.rightMargin: 200
            font.family: "Verdana"
            font.bold: true
        }

        Text {
            id: text2
            x: 1000
            y: 310
            width: 80
            height: 30
            color: "#fff9f9"
            text: qsTr("AC OFF")
            anchors.right: parent.right
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            anchors.rightMargin: 200
            font.family: "Verdana"
            font.bold: true
        }

        Text {
            id: text3
            x: 996
            y: 456
            width: 88
            height: 34
            color: "#ffffff"
            text: qsTr("POWER")
            anchors.right: parent.right
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            anchors.rightMargin: 196
            font.family: "Verdana"
            font.bold: true
        }

        Text {
            id: text4
            y: 394
            width: 232
            height: 23
            color: "#ffffff"
            text: qsTr("PRESSURE")
            anchors.left: imagePrs.right
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            anchors.leftMargin: -233
            font.family: "Verdana"
            font.bold: true
        }
        MenuButton {
            id: btnBack
            text: qsTr("Kembali")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            btnIconSource: "../../../images/go-back-arrow.png"
            anchors.rightMargin: 20
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-ac.qml"))
            }
        }

        Switch {
            id: switch1
            x: 262
            y: 159
            text: qsTr("AC ON/OFF")
        }

        Switch {
            id: switch2
            x: 262
            y: 453
            text: qsTr("POWER")
            font.strikeout: false
            font.bold: false
        }
    }
   }
/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}
}
##^##*/
