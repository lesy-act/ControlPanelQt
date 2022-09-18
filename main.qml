import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12

Window {
    id: window
    width: 1024
    height: 680
    visible: true
    title: qsTr("Hello World")
    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: "StartPage.qml"
    }
    StatusBar {
        id: myStatusBar
    }
}
