import QtQuick 2.5

Item {
Rectangle{
    property string RandomGenerator: value
    id: randomGenerator
    color: "purple"

    Text {
        font.pointSize: 24
        font.bold: true
        anchors.centerIn: parent

        function getRandomInt(max) {
          return Math.floor(Math.random() * max);
        }
        text: value
    }
}
}
