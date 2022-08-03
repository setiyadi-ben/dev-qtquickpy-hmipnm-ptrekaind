import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import "../../qml/control"
import QtQuick.Window 2.2


Item {
//    property int rand: Math.random();
//    //rand number
//    function getRandomNum (Min, Max)
//    {
//        var Range = Max - Min;
//        return(Min + Math.round(rand * Range))
//    }
//    Timer{
//        id: timer;
//        interval: 3000;
//        repeat: true;
//        running: true;
//    }

    Rectangle {
        id: rectangle
        anchors.fill: parent
//        width: 200
//        height: 200
        color: "#9717e4"

        Text{
            id: sensor
            width: 104
            height: 100
            color: "#ffffff"
            anchors.centerIn: parent
            textFormat: Text.RichText
            font.pointSize: 24

                }

            Timer{
                id: timer
                interval: 500;
                repeat: true;
                running: true;
                triggeredOnStart: true //autostart

                //fungsi untuk mendapatkan randomNumber

                function getRandomNum(mi, ma)
                {
                 var Range = mi + ma;
                    var rand = Math.random();
                    return( mi + Math.round(rand * Range));
                }

                function set(){
                    var value = getRandomNum(1, 1001);
                    sensor.text = value;
                    }

                onTriggered: set();
            }


        }
    }

//Rectangle{
//    property string randomGenerator
//    id: randomGenerator1
//    color: "purple"

//    Text {
//        font.pointSize: 24
//        font.bold: true
//        anchors.centerIn: parent

//        function getRandomInt(max) {
//          return Math.floor(Math.random() * max);
//        }
//        RandomGenerator: ""
//    }
//}



//Item {
//    id: itemanimasi
//    anchors.fill: parent

//    Page {
//        id: page
//        anchors.fill: parent
//    }

//    /*
//    https://www.youtube.com/watch?v=27YEH8WEdHc
//    ListView {
//        width: 200
//        height:200
//        clip: false
//        orientation: ListView.Horizontal

//        model: ListModel {
//            ListElement {name: "One"; color: "red"}
//            ListElement {name: "Two"; color: "green"}
//            ListElement {name: "Three"; color: "blue"}
//        }

//        delegate: Rectangle {
//            color: model.color
//            width: ListView.view.width
//            height: ListView.view.height

//            Text {
//                anchors.centerIn: parent
//                text: model.name
//            }
//        }
//    }*/

//   //https://www.youtube.com/watch?v=Zu0cPH88ABo
//    /* SwipeView {
//        id: swipeViewHome
//        currentIndex: 0
//        height: 200
//        anchors.verticalCenter: parent.verticalCenter
//        anchors.left: parent.left
//        anchors.right: parent.right
//        anchors.top: parent.top
//        anchors.verticalCenterOffset: 50
//        anchors.rightMargin: 110
//        anchors.leftMargin: 110
//        anchors.topMargin: 200

//        Item {
//            id: item1
//            anchors.fill: parent

//            Rectangle {
//                id: rectangle1
//                color: "red"
//                anchors.fill: parent
//            }
//        }

//        Item {
//            id: item2
//            anchors.fill: parent

//            Rectangle {
//                id: rectangle2
//                color: "green"
//                anchors.fill: parent
//            }
//        }

//        Item {
//            id: item3
//            anchors.fill: parent

//            Rectangle {
//                id: rectangle3
//                color: "blue"
//                anchors.fill: parent
//            }
//        }
//    }

//    PageIndicator {
//        id: pageIndicator
//        count: swipeViewHome.count
//        currentIndex: swipeViewHome.currentIndex
//        anchors.bottom: swipeViewHome.bottom
//        anchors.horizontalCenter: parent.horizontalCente
//    }*/

//    // FadeBehavior.qml

//    /*

//    Behavior {
//        id: root
//        property Item fadeTarget: targetProperty.object
//        SequentialAnimation {
//            NumberAnimation {
//                target: root.fadeTarget
//                property: "opacity"
//                to: 0
//                easing.type: Easing.InQuad
//            }
//            PropertyAction { } // actually change the controlled property between the 2 other animations
//            NumberAnimation {
//                target: root.fadeTarget
//                property: "opacity"
//                to: 1
//                easing.type: Easing.OutQuad
//            }
//        }
//    }*/

//    Rectangle {
//        id: opacityBox //https://doc.qt.io/qt-6/qml-qtquick-opacityanimator.html
//            width: 300
//            height: 300
//            color: "lightsteelblue"

//            /*
//            tidak bisa difill parent, bakal error
//        anchors.fill: parent
//        anchors.rightMargin: 1000
//        anchors.leftMargin: 0
//        anchors.bottomMargin: 500*/
//        OpacityAnimator {
//            target: opacityBox;
//            from: 0;
//            to: 1;
//            duration: 1000
//            running: true
//        }
//    }

//    Item {
//        id: rotateAnimation //https://doc.qt.io/qt-6/qml-qtquick-rotationanimation.html
//        width: 300; height: 300
//        anchors.left: parent.left
//        anchors.leftMargin: 300

//        /*
//        tidak bisa difill parent, bakal error
//    anchors.fill: parent
//    anchors.rightMargin: 1000
//    anchors.leftMargin: 0
//    anchors.bottomMargin: 500*/


//        Rectangle {
//            id: rect
//            width: 150; height: 100; anchors.centerIn: parent; //anchors.fill: parent
//            color: "red"
//            antialiasing: true

//            states: State {
//                name: "rotated"
//                PropertyChanges { target: rect; rotation: 180 }
//            }

//            transitions: Transition {
//                RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
//            }
//        }

//        MouseArea { id: mouseArea; anchors.fill: parent; onClicked: rect.state = "rotated" }
//    }


//    Rectangle {
//        id: sequentialAnimation //https://doc.qt.io/qt-5/qml-qtquick-sequentialanimation.html
//        width: 100; height: 100
//        color: "red"

//        SequentialAnimation {
//            running: true
//            NumberAnimation { target: sequentialAnimation; property: "x"; to: 50; duration: 1000 }
//            NumberAnimation { target: sequentialAnimation; property: "y"; to: 50; duration: 1000 }
//        }
//    }

//    Item {
//        id: container
//        width: 200; height: 200
//        anchors.left: parent.left
//        anchors.leftMargin: 600

//        Rectangle {
//            id: myRect
//            width: 100; height: 100
//            color: "red"
//        }

//        states: State {
//            name: "reanchored"
//            AnchorChanges { target: myRect; anchors.right: container.right }
//        }

//        transitions: Transition {
//            // smoothly reanchor myRect and move into new position
//            AnchorAnimation { duration: 1000 }
//        }

//        Component.onCompleted: container.state = "reanchored"
//    }

//    Rectangle {
//        id: loopAnimation //https://doc.qt.io/qt-5/qml-qtquick-animation.html
//        width: 100; height: 100; color: "green"
//        anchors.left: parent.left
//        anchors.bottom: parent.bottom
//        anchors.bottomMargin: 400
//        anchors.leftMargin: 550
//        RotationAnimation on rotation {
//            loops: Animation.Infinite
//            from: 0
//            to: 360
//        }
//    }

//    Rectangle {
//        id: mixBoxAnimation
//        width: 50
//        height: 50
//        anchors.left: parent.left
//        anchors.leftMargin: 400
//        ParallelAnimation {
//            ColorAnimation {
//                target: mixBoxAnimation
//                property: "color"
//                from: "forestgreen"
//                to: "lightsteelblue";
//                duration: 1000
//            }
//            ScaleAnimator {
//                target: mixBoxAnimation
//                from: 2
//                to: 1
//                duration: 1000
//            }
//            running: true
//        }
//    }

//    RoundButton {
//        id: roundButton
//        x: 378
//        y: 235
//        width: 100
//        height: 100
//        text: "+"
//    }


//    CustomRoundButton{
//        id: btnbundar
//        width: CustomRoundButton.width
//        anchors.left: parent.left
//        anchors.leftMargin: 400
//    }

//    Rectangle {
//        id: rectanglemon
//        color: "#740fe2"
//        anchors.left: parent.left
//        anchors.right: parent.right
//        anchors.top: parent.top
//        anchors.bottom: parent.bottom
//        anchors.rightMargin: 362
//        anchors.leftMargin: 718
//        anchors.bottomMargin: 242
//        anchors.topMargin: 278

//        RandomGenerator{
//            value : ""
//        }
//    }

////    QtObject{
////        id: obj

////        CustomRoundButton{
////            id: btnbulet
////            x: 50
////            y: 50
////        }
////    }
//}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.1;height:720;width:1280}D{i:1}
}
##^##*/
