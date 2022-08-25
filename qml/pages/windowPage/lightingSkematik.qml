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
        anchors.fill: parent
        color: "#2f3136"

        Image {
            id: image
            anchors.fill: parent
            source: "../../../images/modulLighting/headnfog.png"
            fillMode: Image.PreserveAspectFit

            Rectangle {
                x: 324
                y: 352
                width: 47
                height: 41
                color: "#00000000"
                StatusIndicator {
                    width: 36
                    height: 69
                    color: "#008000"
                    anchors.horizontalCenterOffset: 0
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 0
                }
            }

            Rectangle {
                x: 586
                y: 352
                width: 47
                height: 41
                color: "#00000000"
                StatusIndicator {
                    width: 36
                    height: 69
                    color: "#008000"
                    anchors.horizontalCenterOffset: 0
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 0
                }
            }

            Rectangle {
                x: 324
                y: 509
                width: 47
                height: 41
                color: "#00000000"
                StatusIndicator {
                    width: 36
                    height: 69
                    color: "#008000"
                    anchors.horizontalCenterOffset: 0
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 0
                }
            }

            Rectangle {
                x: 586
                y: 515
                width: 47
                height: 41
                color: "#00000000"
                StatusIndicator {
                    width: 36
                    height: 69
                    color: "#008000"
                    anchors.horizontalCenterOffset: 0
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 0
                }
            }

            Rectangle {
                x: 271
                y: 352
                width: 47
                height: 41
                color: "#00000000"
                StatusIndicator {
                    width: 36
                    height: 69
                    color: "#008000"
                    anchors.horizontalCenterOffset: 0
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 0
                }
            }

            Rectangle {
                x: 271
                y: 515
                width: 47
                height: 41
                color: "#00000000"
                StatusIndicator {
                    width: 36
                    height: 69
                    color: "#008000"
                    anchors.horizontalCenterOffset: 3
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: -5
                }
            }

            Rectangle {
                x: 541
                y: 352
                width: 47
                height: 41
                color: "#00000000"
                StatusIndicator {
                    width: 36
                    height: 69
                    color: "#008000"
                    anchors.horizontalCenterOffset: 0
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 0
                }

                StatusIndicator {
                    width: 36
                    height: 69
                    color: "#008000"
                    anchors.horizontalCenterOffset: 0
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 163
                }
            }
        }
    }
    
    

    MenuButton {
        id: btnBack
        x: 908
        y: 630
        text: qsTr("Kembali")
        anchors.right: btnGeser.left
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        btnIconSource: "../../../images/go-back-arrow.png"
        anchors.rightMargin: 40
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/Dasboard-gardutraksi.qml"))
        }
    }

    MenuButton {
        id: btnGeser
        x: 1068
        y: 630
        text: "Selanjutnya"
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        btnIconSource: "../../../images/next.png"
        anchors.rightMargin: 30
        onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/windowPage/lightingSkematik2.qml"))
        }
    }
    
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.33;height:720;width:1280}D{i:2}
}
##^##*/
