import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import "../../qml/control"
import QtQuick.Window 2.2


Item {
    id: item1
//    Rectangle {
//        id: rectangle
//////        anchors.fill: parent
////        width: 200
////        height: 200
//        color: "#9717e4"

        Text{
            id: sensor
//            width: 80
            //            height: 40
            color: "white"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
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
                // Thanks to Yogi PNM untuk logika JS

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
//    }

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
