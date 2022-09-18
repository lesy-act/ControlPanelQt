import QtQuick 2.0

Item {
    Rectangle {
        id: weatherMode
        height: parent.height
        width: parent.width / 2
        anchors {
            top: parent.top
            left: parent.left
        }
        color: "#1BA6DF"
        Image {
            id: weatherIcon
            source: "qrc:/new/prefix1/sunny.png"
            width: 256
            height: 256
            anchors {
                centerIn: parent
            }
        }
        Text {
            anchors {
                top: weatherIcon.bottom
                topMargin: 40
                horizontalCenter: parent.horizontalCenter
            }
            font.pixelSize: 50
            font.family: "Segoe UI Black"
            color: "White"
            text: "Weather"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                stackView.push("WeatherPage.qml")
            }
        }
    }
    Rectangle {
        id: controlMode
        height: parent.height / 2
        width: parent.width / 2
        anchors {
            bottom: parent.bottom
            right: parent.right
        }
        color: "#EE1C25"
        Image {
            id: controlIcon
            source: "qrc:/new/prefix1/control.png"
            width: 130
            height: 130
            anchors {
                centerIn: parent
            }
        }
        Text {
            anchors {
                top: controlIcon.bottom
                topMargin: 40
                horizontalCenter: parent.horizontalCenter
            }
            font.pixelSize: 50
            font.family: "Segoe UI Black"
            color: "White"
            text: "Control"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                stackView.push("ControlPage.qml")
            }
        }

        Rectangle {
            id: musicMode
            width: controlMode.width
            height: controlMode.height
            anchors {
                bottom: parent.top
            }
            Image {
                id: musicIcon
                anchors {
                    centerIn: parent
                }
                width: 130
                height: 130
                source: "qrc:/new/prefix1/music.png"
            }
            color: "#DAA520"
            Text {
                id: musicText
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    top: musicIcon.bottom
                    topMargin: 20
                }
                text: "Music"
                font.family: "Segoe UI Black"
                font.pixelSize: 50
                color: "White"
            }
        }
    }
}
