import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Layouts 1.12

Item {
    id: root

    property alias ava: icon.source
    property bool online: false

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

        ColumnLayout {
            id: col
            anchors {
                left: icon.right
                top: parent.top
                leftMargin: 8
                topMargin: 6
            }

            RowLayout {

                Rectangle {
                    id: indicator
                    width: 10
                    height: width
                    radius: width / 2
                    color: online ? "green" : "red"
                    Layout.alignment: Qt.AlignVCenter
                }

                Text {
                    id: name
                    font.bold: true
                    Layout.alignment: Qt.AlignVCenter // внутри  RowLayout позиционировать вот так
                }

            }
            Text {
                id: name
                text: qsTr("text")
            }
        }
    }
}
