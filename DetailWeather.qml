import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
Item {
    property alias firstSlider: firstSlider
    property alias firstGauge: firstGauge
    width: 300
    height: 300
    Slider{
        id: firstSlider
        x:80
        y:100
        to:100
        value: 0
    }
    CircularGauge{
        id: firstGauge
        x:76
        y:45
    }

}
