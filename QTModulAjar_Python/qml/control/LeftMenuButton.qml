import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQml 2.3

Button{
    id:btnleftMenu
    text: qsTr("Left Menu Text")
    antialiasing: true
    property url btnIconSource: "../../images/svg_images/home.svg"
    property color  btnColorDefault: "#1c1d20"
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

    implicitWidth: 250
    implicitHeight: 60

    background: Rectangle{
        id: bgBtn
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
            anchors.leftMargin: 18
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
            anchors.left: parent.left
            anchors.leftMargin: 75
    }
  }
}
/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.66;height:60;width:70}
}
##^##*/
