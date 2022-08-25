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
                source: "../../../images/modul_images/indikator red.png"
                anchors.leftMargin: 45
                anchors.topMargin: 115
                anchors.bottomMargin: 250
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: text1
                color: "#ffffff"
                text: qsTr("Pilot Lamp digunakan pada panel, kegunaan pilot lamp adalah untuk mengetahui apakah ada aliran listrik yang masuk pada panel tersebut, jika terdapat aliran listrik yang masuk maka lampu pada pilot lamp akan menyala. Untuk itu walaupun kecil pilot lamp merupakan suatu komponen yang cukup penting pada struktur panel listrik.

Pilot Lamp akan bekerja saat ada tegangan yang masuk ( Phase - Netral ) dtandai dengan menyala nya lampu pada pilot lamp tersebut.
Indikator lampu berwarna merah berfungsi untuk tanda Stop/berhenti")
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
                text: qsTr("Layout Indikator Red")
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
                    stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/indikatorGreen.qml"))
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
                    stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/termostat.qml"))
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
