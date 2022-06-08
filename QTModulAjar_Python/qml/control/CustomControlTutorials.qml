import QtQuick 2.15
import QtQuick.Controls 2.3
import QtQml 2.3

Button{
    id:custombutton

    // CUSTOM PROPERTIES
    property color colorDefault:"#55aaff"
    property color colorMouseOver: "#cccccc"
    property color colorPressed: "#333333"
    
    QtObject{
        id: internal
        property var dynamicColor: if(custombutton.down){
                                       custombutton.down ? colorPressed : colorDefault
                                   }else {
                                       custombutton.hovered ? colorMouseOver : colorDefault
                                   }
    }

    text: qsTr("Custom Button")
    implicitWidth: 200
    implicitHeight: 40

    background: Rectangle{
        color: internal.dynamicColor
        radius: 10
    }
    contentItem: Item {
        id: item1
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            id: textbutton
            text: custombutton.text
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            color: "#000000"
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:40;width:200}
}
##^##*/
