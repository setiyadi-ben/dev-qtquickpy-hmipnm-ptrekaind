import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQml 2.3
import QtQuick.Layouts 1.0


Item {

    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        Rectangle {
            id: rectangleTop
            height: 70
            color: "#5c667d"

            //membuat sudut melengkung
            radius: 10

            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 50
            anchors.leftMargin: 50
            anchors.topMargin: 40

            GridLayout {
                anchors.fill: parent
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                rows: 1
                columns: 3

                TextField{
                    id: textField
                    width: 250
                    placeholderText: "Type your name"
                    Layout.fillWidth: true
                    Layout.preferredHeight: 40
                    Layout.preferredWidth: 250
                    Keys.onEnterPressed: {
                        backend.welcomeText(textField.text)
                    }
                    Keys.onReturnPressed: {
                        backend.welcomeText(textField.text)
                    }


                }

                Button{
                    id: btnChangeName
                    width: 205
                    text: "Change Name"
                    Layout.maximumWidth: 180
                    Layout.fillWidth: true
                    Layout.preferredHeight: 40
                    Layout.preferredWidth: 250
                    onClicked: {
                        backend.welcomeText(textField.text)
                    }

                }

                Switch {
                    id: switchHome
                    width: 80
                    checked: true
                    Layout.preferredWidth: 68
                    Layout.fillWidth: true
                    onToggled: {
                        backend.showHideRectangle(switchHome.checked)
                    }
                }
            }

        }

        Rectangle {
            id: rectangleVisible
            color: "#1d2128"

            //membuat sudut melengkung
            radius: 10

            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangleTop.bottom
            anchors.bottom: parent.bottom
            anchors.leftMargin: 50
            anchors.bottomMargin: 40
            anchors.topMargin: 10
            anchors.rightMargin: 50

            Text {
                id: labelTextName
                x: 246
                color: "#eccaca"
                text: qsTr("Welcome")
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: 14
                horizontalAlignment: Text.AlignHCenter
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: tableDate
                color: "#19dfe7"
                text: qsTr("Date")
                anchors.top: parent.top
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            ScrollView {
                id: scrollView
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: tableDate.bottom
                anchors.bottom: parent.bottom
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 10

                Text{
                    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><title>GNU General Public License (GPL) | Qt 5.15</title><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<h1 style=\" margin-top:18px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:xx-large; font-weight:600; color:#ffffff;\">GNU General Public License (GPL) </span></h1>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><a name=\"details\"></a><span style=\" color:#ffffff;\">Q</span><span style=\" color:#ffffff;\">t is available under the GNU General Public License version 3.</span></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" color:#ffffff;\">The Qt Toolkit is Copyright (C) 2018 The Qt Company Ltd. and other contributors.</span><span style=\" color:#000000;\"><br /></span><span style=\" color:#ffffff;\">Contact:</span> <a href=\"https://www.qt.io/licensing/\"><span style=\" text-decoration: underline; color:#0000ff;\">https://www.qt.io/licensing/</span></a></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" color:#ffffff;\">Reference:</span></p>\n<ul style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; -qt-list-indent: 1;\"><li style=\"\" style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><a href=\"http://www.gnu.org/licenses/gpl.html\"><span style=\" text-decoration: underline; color:#0000ff;\">GNU General Public License (GPL), version 3</span></a><a name=\"gpl-version-3\"></a> </li></ul></body></html>"
                    anchors.fill: parent
                    textFormat: Text.RichText

                }

            }
        }
    }
    Connections{
        target: backend

        function onSetName(name){
            labelTextName.text = name
        }
        function onPrintTime(time){
            tableDate.text = time
        }
        function onIsVisible(isVisible){
            rectangleVisible.visible = isVisible
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}
}
##^##*/
