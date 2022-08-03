import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQml 2.3

Button{
    id:btnleftMenu
    text: qsTr("Download dalam PDF")
    antialiasing: true
    property url btnIconSource: "../../images/download-pdf.png"
    property color  btnColorDefault: "#2AAFD3"
    property color btnColorMouseOver: "#23272E"
    property color btnColorClicked: "#00a1f1"
    property int iconWidth: 35
    property int iconHeight: 35
    property color activeMenuColor: "#55aaff"
    property color activeMenuColorRight: "#2c313c"
    property bool isActiveMenu: false

    QtObject{
        id: internal
        //MOUSE OVER AND CLICK CHANGE CHANGE COLOR
        property var dynamicColor: if (btnleftMenu.down){
                                       btnleftMenu.down ? btnColorClicked : btnColorDefault
                                   }else {
                                       btnleftMenu.hovered ? btnColorMouseOver : btnColorDefault
                                   }
    }

    implicitWidth: 190
    implicitHeight: 50


    background: Rectangle{
        id: bgBtn
        radius: 10
        color: internal.dynamicColor

        Rectangle{
            anchors{
                top: parent.top
                left: parent.left
                bottom: parent.bottom
            }
            color: activeMenuColor
            width: 3
            visible: isActiveMenu
        }

        Rectangle{
            anchors{
                top: parent.top
                right: parent.right
                bottom: parent.bottom
            }
            color: activeMenuColorRight
            width: 5
            visible: isActiveMenu
        }
    }

    contentItem: Item{
        anchors.fill: parent
        id: content

        Image {
            id: iconBtn
            source: btnIconSource
            anchors.leftMargin: 8
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            sourceSize.height: iconHeight
            sourceSize.width: iconWidth
            height: iconHeight
            width: iconWidth
            fillMode: Image.PreserveAspectFit
            visible: false
            antialiasing: true
        }

        ColorOverlay{
            anchors.fill: iconBtn
            source: iconBtn
            color: "#ffffff"
            antialiasing: true
            height: iconHeight
            width: iconWidth
        }

        Text{
            color: "#ffffff"
            text: btnleftMenu.text
            font: btnleftMenu.font
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: iconBtn.right
            anchors.leftMargin: 12
    }
  }
}
/*##^##
Designer {
    D{i:0;autoSize:true}
}
##^##*/
