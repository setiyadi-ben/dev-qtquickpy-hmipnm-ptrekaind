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
        id: rectangle
        color: "#2f3136"
        anchors.fill: parent

        Image {
            id: image
            anchors.fill: parent
            source: "../../../images/modulLighting/ROOMCABIN.png"
            fillMode: Image.PreserveAspectFit

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: -391
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 170
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: -208
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 170
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: -96
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 170
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: -71
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 170
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: -22
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 170
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: 5
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 170
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: 29
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 170
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: 55
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 170
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: 87
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 170
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: 113
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 170
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: 159
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 170
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: 184
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 170
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: 211
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 170
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: 243
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 170
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: -141
                anchors.centerIn: parent
                anchors.verticalCenterOffset: -7
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: -324
                anchors.centerIn: parent
                anchors.verticalCenterOffset: -7
            }

            StatusIndicator {
                color: "#008000"
                anchors.horizontalCenterOffset: 47
                anchors.centerIn: parent
                anchors.verticalCenterOffset: -7
            }
        }
    }

    StatusIndicator {
    color: "#008000"
    anchors.centerIn: parent
    anchors.horizontalCenterOffset: -482
    anchors.verticalCenterOffset: 148
    }

    MenuButton {
        id: btnBack
        x: 1056
        y: 660
        text: qsTr("Kembali")
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        btnIconSource: "../../../images/go-back-arrow.png"
        anchors.rightMargin: 24
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-lighting.qml"))
        }
    }

    StatusIndicator {
        color: "#008000"
        anchors.horizontalCenterOffset: -456
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 148
    }

    StatusIndicator {
        color: "#008000"
        anchors.horizontalCenterOffset: -371
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 148
    }

    StatusIndicator {
        color: "#008000"
        anchors.horizontalCenterOffset: -344
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 148
    }

    StatusIndicator {
        color: "#008000"
        anchors.horizontalCenterOffset: -318
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 148
    }

    StatusIndicator {
        color: "#008000"
        anchors.horizontalCenterOffset: -291
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 148
    }

    StatusIndicator {
        color: "#008000"
        anchors.horizontalCenterOffset: -264
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 148
    }

    StatusIndicator {
        color: "#008000"
        anchors.horizontalCenterOffset: -188
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 148
    }

    StatusIndicator {
        color: "#008000"
        anchors.horizontalCenterOffset: -162
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 148
    }

    StatusIndicator {
        color: "#008000"
        anchors.horizontalCenterOffset: -130
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 148
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.33;height:720;width:1280}D{i:2}
}
##^##*/
