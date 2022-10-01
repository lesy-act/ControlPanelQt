import QtQuick 2.15

Image {
    id: controlBg
    source: "qrc:/new/prefix1/bgStartPage.jpg"
    width: 1024
    height: 680

    Grid {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        columns: 2
        spacing: 20

        Rectangle {
            color: "#C0C0C0"
            width: 350
            height: 250
            radius: 50
            Image {
                id: bathRoomImg
                width: 150
                height: 150
                anchors {
                    centerIn: parent
                }
                source: "qrc:/new/prefix1/bathroom.png"
            }
        }
        Rectangle {
            color: "#C0C0C0"
            width: 350
            height: 250
            radius: 50
            Image {
                id: bedRoomImg
                width: 150
                height: 150
                anchors {
                    centerIn: parent
                }
                source: "qrc:/new/prefix1/bedroom.png"
            }
        }
        Rectangle {
            color: "#C0C0C0"
            width: 350
            height: 250
            radius: 50
            Image {
                id: kitchenRoomImg
                width: 150
                height: 150
                anchors {
                    centerIn: parent
                }
                source: "qrc:/new/prefix1/kitchenroom.png"
            }
        }
        Rectangle {
            color: "#C0C0C0"
            width: 350
            height: 250
            radius: 50
            Image {
                id: livingRoomImg
                width: 150
                height: 150
                anchors {
                    centerIn: parent
                }
                source: "qrc:/new/prefix1/livingroom.png"
            }
        }
    }
    Image {
        id: preButton
        width: 100
        height: 100
        source: "qrc:/new/prefix1/previous.png"
        anchors {
            left: parent.left
            leftMargin: 20
            bottom: parent.bottom
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                stackView.pop()
            }
        }
    }
}
