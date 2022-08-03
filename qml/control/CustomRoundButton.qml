import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQml 2.3

Button{
    id:roundBtn
    width: 40
    height: 40
    text: qsTr("+")
    focusPolicy: Qt.WheelFocus
    checked: false
    autoExclusive: false
    checkable: false
    flat: false
    highlighted: false
    clip: false
    antialiasing: true
    property color  btnColorDefault: "#1c1d20"
    property color btnColorMouseOver: "#23272E"
    property color btnColorClicked: "#00a1f1"
    property color activeMenuColor: "#55aaff"
    property color activeMenuColorRight: "#2c313c"
    property bool isActiveMenu: false


    QtObject{
        id: internal
        //MOUSE OVER AND CLICK CHANGE CHANGE COLOR
        property var dynamicColor: if (roundBtn.down){
                                       roundBtn.down ? btnColorClicked : btnColorDefault
                                   }else {
                                       roundBtn.hovered ? btnColorMouseOver : btnColorDefault
                                   }
    }

    Rectangle{
        id: clickedBtn
        color: internal.dynamicColor
        radius: 7.5
        width: 15
        height: 15
//        implicitWidth:
//        implicitHeight:
        anchors.centerIn: roundBtn
//        id: waveAnimation
//        color: "white"
    }

//    implicitWidth: 40
//    implicitHeight: 40


    background: Rectangle{
        id: waveAnimation
//        color: "orange"
        radius: 20
        anchors.centerIn: roundBtn
//        Width: 20
//        Height: 20
//            implicitWidth: 40
//            implicitHeight: 40

        ParallelAnimation {
            ColorAnimation {
                target: waveAnimation
                property: "color"
                from: "transparent"
                to: "gray";
                duration: 1000
                loops: Animation.Infinite
            }
            ScaleAnimator {
                target: waveAnimation
                from: 0.8
                to: 1.0
                duration: 1000
                loops: Animation.Infinite
            }
            running: true
        }
//            Rectangle{
//                id: clickedBtn
//                x: 10
//                y: 10
//                anchors.centerIn: roundBtn
//                color: internal.dynamicColor
//                radius: 10
//                implicitWidth: 20
//                implicitHeight: 20
////                anchors.centerIn: waveAnimation
//        //        id: waveAnimation
//        //        color: "white"
//            }



//        id: bgBtn
//        color: internal.dynamicColor
//        radius: 10


//        Rectangle{
//            anchors{
//                top: parent.top
//                left: parent.left
//                bottom: parent.bottom
//            }
//            color: activeMenuColor
//            width: 30
//            visible: isActiveMenu
//        }

//        Rectangle{
//            anchors{
//                top: parent.top
//                right: parent.right
//                bottom: parent.bottom
//            }
//            color: activeMenuColorRight
//            width: 50
//            visible: isActiveMenu
//        }
    }

}
/*##^##
Designer {
    D{i:0;formeditorZoom:4}
}
##^##*/
