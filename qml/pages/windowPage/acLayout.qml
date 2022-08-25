import QtQuick 2.0
import "../../control"

Item {
    id: item1
    Image {
        id: image
        anchors.fill: parent
        source: "../../../images/modul_images/00.0-K59101_page-0001.jpg"
        asynchronous: true
        fillMode: Image.Stretch
    }
    MenuButton {
    id: btnNext
    text: qsTr("Selanjutnya")
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    onClicked: {
            stackView.push(Qt.resolvedUrl("../../../qml/pages/detailPage/acLayout2.qml"))
        }
    btnIconSource: "../../../images/next.png"
    anchors.rightMargin: 20
    anchors.bottomMargin: 40
}
}
/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}
}
##^##*/
