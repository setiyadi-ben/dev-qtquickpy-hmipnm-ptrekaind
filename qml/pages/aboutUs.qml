import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import "../control"

Item {
    id: item1
    Rectangle {
        id: rectangle
        color: "#2f3136"
        anchors.fill: parent
    }

    Rectangle {
        id: textBoxParticipant
        color: "#ffffff"
        radius: 5
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        clip: false
        anchors.rightMargin: 20
        anchors.bottomMargin: 145
        anchors.leftMargin: 30
        anchors.topMargin: 90

        ScrollView{
            anchors.fill: parent
            anchors.leftMargin: 10
            clip: true
            Text {
                id: text2
                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:18pt; font-weight:600;\">Deskripsi Aplikasi</span></p>\n<p align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:10pt;\">Project ini merupakan sebuah proyek kerjasama antara PT Rekaindo Global Jasa (PT REKA) dengan Politeknik Negeri Madiun (PNM) yang sedang dikembangkan oleh PT REKA dengan mahasiswa magang dengan tujuan untuk membuat software yang berisi modul pembelajaran komponen kereta api (modul ajar) serta berisi dengan fasilitas monitoring dan control. </span></p>\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:18pt; font-weight:600;\">Pihak - pihak terkait :</span></p>\n<p align=\"justify\" style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n<ul style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; -qt-list-indent: 1;\"><li style=\" font-size:10pt;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-weight:600;\">Penanggung Jawab :</span></li>\n<p align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:1; text-indent:0px;\"><span style=\" font-size:10pt;\">Bapak Rizqy Ervani, ST,.</span></p>\n<li style=\" font-size:10pt; font-weight:600;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Instruktur / Mentor :</li>\n<p align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:1; text-indent:0px;\"><span style=\" font-size:10pt;\">Ibu Karina Eka Santi, ST,.</span></p>\n<p align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:1; text-indent:0px;\"><span style=\" font-size:10pt;\">Akbar Januar, A.Md</span></p>\n<p align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:1; text-indent:0px;\"><span style=\" font-size:10pt;\">Dewi Apriliani, S.Tr,.</span></p>\n<li style=\" font-size:10pt; font-weight:600;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Developer (berdasarkan jadwal masuk dan urutan absensi) :</li>\n<ol style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; -qt-list-indent: 2;\"><li style=\" font-size:10pt; font-weight:600;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-weight:400;\">Nico Subkhan (PENS)</span></li>\n<li style=\" font-size:10pt;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Rifqi Hidayat (PENS)</li>\n<li style=\" font-size:10pt;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Faris Robby (PPNS)</li>\n<li style=\" font-size:10pt;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Eka Gunawan (PPNS)</li>\n<li style=\" font-size:10pt;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Anindya Zahra'ul Jasmine (Polines)</li>\n<li style=\" font-size:10pt;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Bunga Allysah Gardenia (Polines)</li>\n<li style=\" font-size:10pt;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Benny Hartanto Setiyadi (Polines)</li>\n<li style=\" font-size:10pt;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Tsaniya Affadanisa (Polines)</li>\n<li style=\" font-size:10pt;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Satrio Riha (PPNS)</li>\n<li style=\" font-size:10pt;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Fasa Imana (PPNS)</li></ol>\n<li style=\" font-size:10pt; font-weight:600;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Terima Kasih Kepada :</li></ul>\n<ol style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; -qt-list-indent: 2;\"><li style=\" font-size:10pt; font-weight:600;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-weight:400;\">Allah SWT / Tuhan YME</span></li>\n<li style=\" font-size:10pt;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">PT Rekaindo Global Jasa (PT REKA)</li>\n<li style=\" font-size:10pt;\" align=\"justify\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Politeknik Negeri Madiun (PNM)</li></ol></body></html>"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.WordWrap
                anchors.rightMargin: 1503
                textFormat: Text.RichText
                clip: false
            }
            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        }


    }

    MenuButton {
        id: btnBack
        x: 1060
        y: 620
        text: qsTr("Kembali")
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 40
        anchors.rightMargin: 20
        btnIconSource: "../../../images/go-back-arrow.png"
    }

    DownloadButton {
        text: qsTr("Online repository")
        anchors.left: parent.left
        anchors.top: textBoxParticipant.bottom
        anchors.leftMargin: 30
        anchors.topMargin: 12
        btnIconSource: "../../images/github-sign.png"
        onClicked: {
            Qt.openUrlExternally("https://github.com/setiyadi-ben/dev-qtquickpy-hmipnm-ptrekaind")
        }
    }

    Text {
        id: textJudul
        color: "#ffffff"
        text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Rockwell Extra Bold','SolidWorks GDT','Segoe UI Black'; font-size:28pt; font-weight:600; color:#ffffff;\">About Us</span></p></body></html>"
        anchors.left: parent.left
        anchors.top: parent.top
        font.pixelSize: 12
        wrapMode: Text.NoWrap
        textFormat: Text.RichText
        anchors.leftMargin: 30
        font.family: "Times New Roman"
        anchors.topMargin: 20
    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}D{i:2}D{i:6}
}
##^##*/
