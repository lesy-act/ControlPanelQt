import QtQuick 2.0

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
