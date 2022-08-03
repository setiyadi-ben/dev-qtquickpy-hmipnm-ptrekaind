import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQml 2.3

Button{
    id:btnleftMenu
    text: qsTr("Left Menu Text")
    property url btnIconSource: "../../images/svg_images/home.svg"
    property color  btnColorDefault: "#1c1d20"
    property color btnColorMouseOver: "#23272E"
    property color btnColorClicked: "#00a1f1"
    property int iconWidth: 150
    property int iconHeight: 150
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

    implicitWidth: 200
    implicitHeight: 150

    background: Rectangle{
        id: bgBtn
        color: internal.dynamicColor
        radius: 10

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
            anchors.rightMargin: 15
            anchors.leftMargin: 15
            anchors.bottomMargin: 15
            anchors.topMargin: 15
            sourceSize.height: iconHeight
            sourceSize.width: iconWidth
            fillMode: Image.Stretch
            visible: true
            anchors.fill: parent
            antialiasing: false
        }

//        ColorOverlay{
//            anchors.fill: iconBtn
//            source: iconBtn
//            color: "#ffffff"
//            antialiasing: true
//            height: iconHeight
//            width: iconWidth
//        }

//        Text{
//            visible: false
//            color: "#ffffff"
//            text: btnleftMenu.text
//            font: btnleftMenu.font
//            anchors.verticalCenter: parent.verticalCenter
//            anchors.left: parent.left
//            anchors.leftMargin: 75
//    }
  }
}
/*##^##
Designer {
    D{i:0;autoSize:true}D{i:6}
}
##^##*/
