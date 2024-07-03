import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Layouts 1.12

Item {
    id: root
    //


    property alias ava: icon.source
    property bool online: false
    property alias name: nameText.text
    property alias lastPost: lastPost.text
    property bool isCollapsed: root.state === "collapsed"

    state: "collapsed"
    //state: "expanded"

    states: [
        State{
            name: "collapsed"
            PropertyChanges {
                target: root
                height: icon.height + icon.anchors.margins * 2
            }
        },
        State {
            name: "expanded"
            PropertyChanges {
                target: root
                height: col.height + icon.anchors.margins * 2

            }
        }

    ]

    Behavior on height {
        NumberAnimation {
            duration: 150
        }

    }

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
                right: parent.right
                leftMargin: 8
                topMargin: 6
            }

            RowLayout {
                Layout.fillWidth: true

                Rectangle {
                    id: indicator
                    width: 10
                    height: width
                    radius: width / 2
                    color: online ? "green" : "red"
                    Layout.alignment: Qt.AlignVCenter
                }

                Text {
                    id: nameText
                    font.bold: true
                    Layout.alignment: Qt.AlignVCenter // внутри  RowLayout позиционировать вот так
                }

            }
            Text {
                id: lastPost
                Layout.fillHeight: true
                Layout.fillWidth: true
                //Layout.preferredWidth: 50
                //wrapMode: Text.WordWrap
                wrapMode: isCollapsed ? Text.NoWrap : Text.WordWrap
                //обрезаем текст
                elide: root.isCollapsed ? Text.ElideRight : Text.ElideNone
            }
        }

        MouseArea {
            anchors.fill: col
            onClicked: {
                if(lastPost.truncated || lastPost.lineCount > 1){
                    root.state = isCollapsed ? "expanded" : "collapsed"
                }

            }
        }
    }
}
