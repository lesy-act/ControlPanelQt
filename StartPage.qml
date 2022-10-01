import QtQuick 2.0

Item {

    //    Image {
    //        width: parent.width
    //        height: parent.height
    //        id: startBackGround
    //        source: "qrc:/new/prefix1/bgStartPage.jpg"
    //    }
    Rectangle {
        id: weatherMode
        height: parent.height
        width: parent.width / 2
        anchors {
            left: startBackGround.left
            verticalCenter: startBackGround.verticalCenter
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
                stackView.push("WeatherItem.qml")
                appBridge.restApiRequest()
            }
        }
    }
    Rectangle {
        id: controlMode

        height: parent.height
        width: parent.width / 2
        anchors {
            left: weatherMode.right
            rightMargin: 100
            verticalCenter: startBackGround.verticalCenter
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
                stackView.push("WeatherChart.qml")
            }
        }
    }

    Rectangle {
        id: statusBar
        color: "#FFFFE0"
        radius: 80
        width: 500
        height: 51
        anchors {
            horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: timeText
            anchors.centerIn: parent
            color: "#008B8B"
            font.pixelSize: 36
            text: "12:12 "
            font.family: "Segoe UI Black"
        }
        Timer {
            interval: 1000
            repeat: true
            running: true
            onTriggered: {
                timeText.text = Qt.formatDateTime(new Date(), "hh:mm:ss")
            }
        }
    }
}
