import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    signal printText
    Button {
        width: 50
        height: 50
        onClicked: parent.printText()
    }
}
