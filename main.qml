import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    visible: true
    width: 420
    height: 780
    title: qsTr("Hello World")
    color: "steelblue"

    ListView {
        anchors.fill: parent
        model: 6
        delegate: Rectangle {
            width: parent.width
            height: 30
            border.width: 1
            border.color: "red"
            color: "transparent"
        }
    }
}
