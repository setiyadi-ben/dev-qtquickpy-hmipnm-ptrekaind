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
                source: "../../../images/modul_images/3-phase relay.png"
                anchors.leftMargin: 45
                anchors.topMargin: 115
                anchors.bottomMargin: 250
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: text1
                color: "#ffffff"
                text: qsTr("Relai CM-PVS.41S berasal dari rentang monitor tiga fase CM. Relai ini beroperasi dengan tegangan suplai kontrol pengenal / tegangan pengukuran tiga fase 300-500 V AC dan memiliki output 2 c/o dengan kontak pengenal 250 V / 4 A. CM-PVS.41S memantau parameter fase lebih / tegangan rendah dan kegagalan fase. Nilai ambang batas yang sesuai dapat disesuaikan. Pemantauan urutan fase serta penundaan tripping ON atau OFF dapat dipilih. Penundaan trip dapat disetel pada rentang seketika hingga 30 detik (0, 0,1-30 detik). Penutup transparan yang dapat ditutup rapat untuk perlindungan terhadap perubahan yang tidak sah tersedia sebagai aksesori. Perangkat ini menawarkan teknologi koneksi sekrup dengan terminal koneksi sangkar ruang ganda")
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
                text: qsTr("Layout 3-Phase Relay")
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
                    stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/HKF1-11.qml"))
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
                    stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/indikatorWhite.qml"))
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
