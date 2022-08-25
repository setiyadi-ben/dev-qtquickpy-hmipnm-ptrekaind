import QtQuick 2.15
import "../../control"
import "../../pages"
import QtQuick.Controls 2.3
import QtWebView 1.15
//import QtWebKit 3.0


Item {
    Rectangle {
        id: rectangle
        color: "#2f3136"
        anchors.fill: parent

        Text {
            id: textJudul
            color: "#ffffff"
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Rockwell Extra Bold','SolidWorks GDT','Segoe UI Black'; font-size:28pt; font-weight:600; color:#ffffff;\">Layout Skematik | Piping Brake</span></p></body></html>"
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 12
            wrapMode: Text.NoWrap
            font.family: "Times New Roman"
            anchors.topMargin: 20
            anchors.leftMargin: 30
            clip: false
            textFormat: Text.RichText
        }
    }

    Rectangle {
        id: rectangleBox
        radius: 10
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 18
        anchors.leftMargin: 18
        anchors.bottomMargin: 106
        anchors.topMargin: 90


        WebView {
            id: webview
            anchors.fill: parent
            url: "https://drive.google.com/file/d/17EzerQYC2stQvvTq4cVV2FOnNgC6dMW9/view"
            anchors.bottomMargin: 15
            anchors.rightMargin: 15
            anchors.leftMargin: 15
            anchors.topMargin: 15
        }

//        GroupBox {
//            id: groupBox
//            width: 504
//            height: 149
//            visible: true
//            anchors.verticalCenter: parent.verticalCenter
//            anchors.horizontalCenter: parent.horizontalCenter
//            Image {
//                id: image
//                x: 0
//                width: 67
//                height: 49
//                visible: true
//                anchors.verticalCenter: parent.verticalCenter
//                source: "../../../images/no-wifi.png"
//                fillMode: Image.PreserveAspectFit
//            }

//            Text {
//                id: text1
//                width: 415
//                visible: true
//                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:12pt;\">Sambungkan dengan Internet dan coba lagi.</span></p></body></html>"
//                anchors.left: image.right
//                anchors.top: parent.top
//                anchors.bottom: parent.bottom
//                font.pixelSize: 12
//                horizontalAlignment: Text.AlignLeft
//                verticalAlignment: Text.AlignVCenter
//                anchors.bottomMargin: 51
//                anchors.topMargin: 51
//                anchors.leftMargin: 20
//                textFormat: Text.RichText
//            }
//            clip: false
//            title: qsTr("")
//        }

//        ShaderEffect {
//            anchors.fill: parent
//            property real time: 0
//            NumberAnimation on time {
//                loops: Animation.Infinite
//                from: 0
//                to: Math.PI * 2
//                duration: 1000
//            }
//            property var source: ShaderEffectSource {
//                sourceItem: webview
//                hideSource: true
//            }
//            fragmentShader: "
//                uniform highp float time;
//                uniform sampler2D source;
//                varying highp vec2 qt_TexCoord0;
//                void main() {
//                    float a = 0.01 * (0.5 * (sin(time) + 1.0));
//                    highp vec2 uv = qt_TexCoord0.xy;
//                    highp vec2 delta = a * sin((vec2(uv.y, uv.x) * 30.0 + time));
//                    gl_FragColor  = texture2D(source, uv + delta);
//                }"
//        }
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
        anchors.bottomMargin: 30
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-brake.qml"))
        }
    }

    MenuButton {
        id: btnSkematikKnorr
        x: 1051
        y: 627
        text: qsTr("Skematik Knorr")
        anchors.right: btnBack.left
        anchors.bottom: parent.bottom
        btnIconSource: "../../../images/drawing.png"
        anchors.bottomMargin: 30
        anchors.rightMargin: 40
        isActiveMenu: false
        onClicked: {
            btnSkematikPiping.isActiveMenu = false
            btnSkematikKnorr.isActiveMenu = true
            stackView.push(Qt.resolvedUrl("../../../qml/pages/windowPage/brakeSkematik.qml"))

        }
    }

    MenuButton {
        id: btnSkematikPiping
        x: 1056
        y: 616
        text: qsTr("Skematik Piping")
        anchors.right: btnSkematikKnorr.left
        anchors.bottom: parent.bottom
        btnIconSource: "../../../images/drawing.png"
        anchors.bottomMargin: 30
        anchors.rightMargin: 40
        isActiveMenu: true
        onClicked: {
            btnSkematikPiping.isActiveMenu = true
            btnSkematikKnorr.isActiveMenu = false
            stackView.push(Qt.resolvedUrl("../../../qml/pages/windowPage/brakeSkematikPiping.qml"))

        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}
}
##^##*/
