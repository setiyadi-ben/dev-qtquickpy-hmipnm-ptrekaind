import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQml 2.3

Button{
    id:btnToggle
    property url btnIconSource: "../../images/svg_images/menu_icon.svg"
    property color  btnColorDefault: "#1c1d20"
    property color btnColorMouseOver: "#23272E"
    property color btnColorClicked: "#00a1f1"

    QtObject{
        id: internal
        //MOUSE OVER AND CLICK CHANGE CHANGE COLOR
        property var dynamicColor: if (btnToggle.down){
                                       btnToggle.down ? btnColorClicked : btnColorDefault
                                   }else {
                                       btnToggle.hovered ? btnColorMouseOver : btnColorDefault
                                   }
    }

    implicitWidth: 70
    implicitHeight: 60

    background: Rectangle{
        id: bgBtn
        color: internal.dynamicColor

        Image {
            id: iconBtn
            source: btnIconSource
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 35
            width: 35
            fillMode: Image.PreserveAspectFit
            visible: false
        }
        
        ColorOverlay{
            visible: true
            anchors.fill: iconBtn
            source: iconBtn
            color: "#ffffff"
            antialiasing: true
        }

    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:4}
}
##^##*/
