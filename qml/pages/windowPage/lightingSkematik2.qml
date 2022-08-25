import QtQuick 2.15
import "../../control"
import "../../pages"
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import QtQuick.Extras 1.4

Item {
    Rectangle{
        anchors.fill: parent
        color: "#2f3136"

        Image {
            id: image
            anchors.fill: parent
            source: "../../../images/modulLighting/signal.png"
            fillMode: Image.PreserveAspectFit

            StatusIndicator {
                width: 36
                height: 69
                color: "#008000"
                anchors.horizontalCenterOffset: -436
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 162
            }

            StatusIndicator {
                width: 36
                height: 69
                color: "#008000"
                anchors.horizontalCenterOffset: -478
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 162
            }
        }
    }
    
    

    MenuButton {
        id: btnBack
        x: 793
        y: 630
        text: qsTr("Kembali")
        anchors.right: btnGeser2.left
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        btnIconSource: "../../../images/go-back-arrow.png"
        anchors.rightMargin: 40
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/Dashboard-lighting.qml"))
        }
    }

    MenuButton {
        id: btnGeser2
        x: 940
        y: 630
        text: qsTr("Sebelumnya")
        anchors.right: btnGeser.left
        anchors.bottom: parent.bottom
        btnIconSource: "../../../images/balik.png"
        anchors.bottomMargin: 30
        anchors.rightMargin: 40
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/windowPage/lightingSkematik.qml"))
        }
    }

    MenuButton {
        id: btnGeser
        x: 1084
        y: 630
        text: qsTr("Selanjutnya")
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        btnIconSource: "../../../images/geser.png"
        anchors.bottomMargin: 30
        anchors.rightMargin: 56
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/windowPage/lightingSkematik3.qml"))
        }
    }

    StatusIndicator {
        width: 36
        height: 69
        color: "#008000"
        anchors.horizontalCenterOffset: -431
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 1
    }

    StatusIndicator {
        width: 36
        height: 69
        color: "#008000"
        anchors.horizontalCenterOffset: -473
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 1
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:720;width:1280}
}
##^##*/
