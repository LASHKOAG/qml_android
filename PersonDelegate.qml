import QtQuick 2.13
import QtQuick.Window 2.13

Item {
    id: root

    property alias ava: icon.source

    Rectangle {
        anchors.fill: parent
        radius: 6
        color: "lightsteelblue"

        Image {
            id: icon
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.margins: 6
            width: 64
            height: width
            sourceSize: Qt.size(width, width)
            fillMode: Image.PreserveAspectFit //вписывалась без искажений пропорций
        }
    }
}
