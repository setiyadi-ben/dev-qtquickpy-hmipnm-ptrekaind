import QtQuick 2.0
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import "../../control" //import folder qml untuk kustom button
import "../../pages/windowPage" //import halaman swipeview

Item {
    Rectangle {
        id: rectangle
        color: "#3f3f3f"
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            color: "#3f3f3f"
            border.color: "#ffffff"
            border.width: 5
            anchors.fill: parent

            Image {
                id: image
                width: 262
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "../../../images/modul_images/HKF1-11.png"
                anchors.leftMargin: 45
                anchors.topMargin: 115
                anchors.bottomMargin: 250
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: text1
                color: "#ffffff"
                text: qsTr("HKF1-11 Auxiliary Contact untuk frontmounting yang memiliki tegangan operasional terukur 250V dan memiliki arus operasional terukur AC (24V=6A,240V=4A,380/400V=3A,690V=1A), DC (24V=2A,125V=0,55A, 250V=0.27A,440V=0.15A,600V=0.15A), serta memiliki sirkuit bantu tegangan tahan impuls terukur 6 kV, serta tegangan isolasi terukur 250 v, serta kapasitas penghubung sirkuit bantu kaku 1/2x 1...1.5 mm2, Fleksibel dengan ferrule 1/2x 0.75...1.5mm2.")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: 25
                wrapMode: Text.WordWrap
                anchors.rightMargin: 18
                anchors.leftMargin: 313
                anchors.bottomMargin: 17
                anchors.topMargin: 115
                    font.family: "Times New Roman"
                }
            }
            Label {
                id: label
                color: "#ffffff"
                text: qsTr("Layout HKF1-11")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                anchors.topMargin: 20
                anchors.rightMargin: 130
                anchors.leftMargin: 130
                font.pointSize: 30
                font.family: "Times New Roman"
            }

            MenuButton {
            id: btnPrev
            text: qsTr("Sebelumnya")
            anchors.right: btnNext.left
            anchors.bottom: parent.bottom
            onClicked: {
                    stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/HK1-20.qml"))
                }
            btnIconSource: "../../../images/back.png"
            anchors.rightMargin: 20
            anchors.bottomMargin: 40
            }

            MenuButton {
            id: btnNext
            text: qsTr("Selanjutnya")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            onClicked: {
                    stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/3-phaseRelay.qml"))
                }
            btnIconSource: "../../../images/next.png"
            anchors.rightMargin: 20
            anchors.bottomMargin: 40
            }

            MenuButton {
            id: btnBack
            x: 48
            text: qsTr("Kembali")
            anchors.right: btnPrev.left
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            onClicked: {
                stackView.push(Qt.resolvedUrl("../../../qml/pages/windowPage/acPanel.qml"))
                }
            btnIconSource: "../../../images/go-back-arrow.png"
            anchors.rightMargin: 20
            }

        }
    }

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}
}
##^##*/
