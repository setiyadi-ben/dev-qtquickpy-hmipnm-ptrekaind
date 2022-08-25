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
                source: "../../../images/modul_images/evap.png"
                anchors.leftMargin: 45
                anchors.topMargin: 115
                anchors.bottomMargin: 250
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: text1
                color: "#ffffff"
                text: qsTr("Evaporator adalah sebuah alat yang berfungsi mengubah sebagian atau keseluruhan sebuah pelarut dari sebuah larutan dari bentuk cair menjadi uap. Evaporator mempunyai dua prinsip dasar, untuk menukar panas dan untuk memisahkan uap yang terbentuk dari cairan. Dua (2) unit kumparan evaporator yang berukuran cukup untuk\nmenyediakan kapasitas pendinginan yang diperlukan untuk semua kondisi operasi.\nGunakan alur dalam dan terhuyung-huyung untuk penukar panas\nKumparan menggunakan tabung tembaga dengan sirip aluminium berlapis untuk\npastikan dekat, bahkan kontak untuk perpindahan panas yang baik. Sirip memiliki\nlapisan untuk perlindungan lingkungan, yang menolak air,\nmenghambat akumulasi debu dan bakteri pada sirip.")
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
                text: qsTr("Layout Evaporator")
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
                    stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/acIntroduksi.qml"))
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
                    stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/ekspansi.qml"))
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
                    stackView.push(Qt.resolvedUrl("../../../qml/pages/windowPage/acUnit.qml"))
                }
            btnIconSource: "../../../images/go-back-arrow.png"
            anchors.rightMargin: 20
        }
    }
}
/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}D{i:3}D{i:4}D{i:2}
}
##^##*/
