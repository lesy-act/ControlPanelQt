import QtQuick 2.15

Item {
    property string tempMax: "°C"
    property string tempMin: "°C"
    Rectangle {
        id: currentDay
        width: parent.width / 4
        height: parent.height
        color: "#804982"
        Image {
            id: currentDayIcon
            width: 250
            height: 250
            anchors.centerIn: parent
            //            source: "qrc:/new/prefix1/" + appBridge.JsonData.DailyForecasts[1].Day.Icon + ".png"
        }

        Image {
            id: preButton
            width: 60
            height: 50
            source: "qrc:/new/prefix1/left-arrow.png"
            anchors {
                left: parent.left
                bottom: parent.bottom
                leftMargin: 60
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    stackView.pop()
                }
            }
        }
        Text {
            id: myDate
            color: "#008B8B"
            anchors.top: timeStatusBar.bottom
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            text: "June 20 2022"
            font.family: "Segoe UI Black"
            font.pixelSize: 23
        }
        Timer {
            interval: 1000
            repeat: true
            running: true
            onTriggered: {
                myDate.text = Qt.formatDate(new Date(), "dddd dd MMMM")
            }
        }
        StatusBar {
            id: timeStatusBar
        }
        Text {
            id: tempMaxOfCurrentDay
            text: appBridge.JsonData.DailyForecasts[0].Temperature.Minimum.Value
        }
    }

    Grid {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: currentDay.right
        anchors.leftMargin: 5
        columns: 3
        spacing: 5
        Rectangle {
            id: day1
            color: "#2899B7"
            width: currentDay.width
            height: currentDay.height / 2
            Text {
                anchors {
                    left: parent.left
                    leftMargin: day1.width / 2 - 30
                    topMargin: 70
                    top: parent.top
                }
                id: day1Text
                text: qsTr("Day1")
                color: "White"
                font.pixelSize: 35
                font.family: "Segoe UI Black"
            }
            Image {
                id: day1Icon
                width: 100
                height: 100
                source: "qrc:/new/prefix1/20.png"
                anchors {
                    centerIn: parent
                }
            }

            Image {
                id: tempIcon1
                width: 40
                height: 40
                source: "qrc:/new/prefix1/temperature.png"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 65
                anchors.left: parent.left
                anchors.leftMargin: 15
            }
            Rectangle {
                color: "White"
                radius: 1
                width: parent.width - 15
                height: 2
                anchors.top: tempIcon1.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Image {
                id: humidityIcon1
                width: 40
                height: 40
                source: "qrc:/new/prefix1/humidity.png"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.left: parent.left
                anchors.leftMargin: 15
            }
        }
        Rectangle {
            id: day2
            color: "#2899B7"
            width: currentDay.width
            height: currentDay.height / 2
            Text {
                anchors {
                    left: day2.left
                    leftMargin: day2.width / 2 - 30
                    topMargin: 70
                    top: day2.top
                }
                id: day2Text
                text: qsTr("Day2")
                color: "White"

                font.pixelSize: 35
                font.family: "Segoe UI Black"
            }
            Image {
                id: day2Icon
                width: 100
                height: 100
                source: "qrc:/new/prefix1/43.png"
                anchors {
                    centerIn: parent
                }
            }

            Image {
                id: tempIcon2
                width: 40
                height: 40
                source: "qrc:/new/prefix1/temperature.png"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 65
                anchors.left: parent.left
                anchors.leftMargin: 15
            }
            Rectangle {
                color: "White"
                radius: 1
                width: parent.width - 15
                height: 2
                anchors.top: tempIcon2.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Image {
                id: humidityIcon2
                width: 40
                height: 40
                source: "qrc:/new/prefix1/humidity.png"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.left: parent.left
                anchors.leftMargin: 15
            }
        }
        Rectangle {
            id: day3
            color: "#2899B7"
            width: currentDay.width
            height: currentDay.height / 2
            Text {
                anchors {
                    left: parent.left
                    leftMargin: day3.width / 2 - 30
                    topMargin: 70
                    top: parent.top
                }
                id: day3Text
                text: qsTr("Day3")
                color: "White"

                font.pixelSize: 35
                font.family: "Segoe UI Black"
            }
            Image {
                id: day3Icon
                width: 100
                height: 100
                source: "qrc:/new/prefix1/24.png"
                anchors {
                    centerIn: parent
                }
            }
            Image {
                id: tempIcon3
                width: 40
                height: 40
                source: "qrc:/new/prefix1/temperature.png"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 65
                anchors.left: parent.left
                anchors.leftMargin: 15
            }
            Rectangle {
                color: "White"
                radius: 1
                width: parent.width - 15
                height: 2
                anchors.top: tempIcon3.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Image {
                id: humidityIcon3
                width: 40
                height: 40
                source: "qrc:/new/prefix1/humidity.png"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.left: parent.left
                anchors.leftMargin: 15
            }
        }
        Rectangle {
            id: day4
            color: "#2899B7"
            width: currentDay.width
            height: currentDay.height / 2
            Text {
                anchors {
                    left: parent.left
                    leftMargin: day4.width / 2 - 30
                    topMargin: 70
                    top: parent.top
                }
                id: day4Text
                text: qsTr("Day4")
                color: "White"

                font.pixelSize: 35
                font.family: "Segoe UI Black"
            }
            Image {
                id: day4Icon
                width: 100
                height: 100
                source: "qrc:/new/prefix1/31.png"
                anchors {
                    centerIn: parent
                }
            }
            Image {
                id: tempIcon4
                width: 40
                height: 40
                source: "qrc:/new/prefix1/temperature.png"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 65
                anchors.left: parent.left
                anchors.leftMargin: 15
            }
            Rectangle {
                color: "White"
                radius: 1
                width: parent.width - 15
                height: 2
                anchors.top: tempIcon4.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Image {
                id: humidityIcon4
                width: 40
                height: 40
                source: "qrc:/new/prefix1/humidity.png"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.left: parent.left
                anchors.leftMargin: 15
            }
        }
        Rectangle {
            id: day5
            color: "#2899B7"
            width: currentDay.width
            height: currentDay.height / 2
            Text {
                anchors {
                    left: parent.left
                    leftMargin: day5.width / 2 - 30
                    topMargin: 70
                    top: parent.top
                }
                id: day5Text
                text: qsTr("Day5")
                color: "White"

                font.pixelSize: 35
                font.family: "Segoe UI Black"
            }
            Image {
                id: day5Icon
                width: 100
                height: 100
                source: "qrc:/new/prefix1/28.png"
                anchors {
                    centerIn: parent
                }
            }
            Image {
                id: tempIcon5
                width: 40
                height: 40
                source: "qrc:/new/prefix1/temperature.png"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 65
                anchors.left: parent.left
                anchors.leftMargin: 15
            }
            Rectangle {
                color: "White"
                radius: 1
                width: parent.width - 15
                height: 2
                anchors.top: tempIcon5.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Image {
                id: humidityIcon5
                width: 40
                height: 40
                source: "qrc:/new/prefix1/humidity.png"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.left: parent.left
                anchors.leftMargin: 15
            }
        }
        Rectangle {
            id: day6
            color: "#2899B7"
            width: currentDay.width
            height: currentDay.height / 2
            Text {

                anchors {
                    left: parent.left
                    leftMargin: day6.width / 2 - 30
                    topMargin: 70
                    top: parent.top
                }
                id: day6Text
                text: qsTr("Day6")
                color: "White"

                font.pixelSize: 35
                font.family: "Segoe UI Black"
            }
            Image {
                id: day6Icon
                width: 100
                height: 100
                source: "qrc:/new/prefix1/37.png"
                anchors {
                    centerIn: parent
                }
            }
            Image {
                id: tempIcon6
                width: 40
                height: 40
                source: "qrc:/new/prefix1/temperature.png"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 65
                anchors.left: parent.left
                anchors.leftMargin: 15
            }
            Rectangle {
                color: "White"
                radius: 1
                width: parent.width - 15
                height: 2
                anchors.top: tempIcon6.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Image {
                id: humidityIcon6
                width: 40
                height: 40
                source: "qrc:/new/prefix1/humidity.png"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.left: parent.left
                anchors.leftMargin: 15
            }
        }
    }
    Connections {
        target: appBridge
        onDataChanged: {
            currentDayIcon.source = "qrc:/new/prefix1/"
                    + appBridge.JsonData.DailyForecasts[0].Day.Icon + ".png"
            day1Icon.source = "qrc:/new/prefix1/"
                    + appBridge.JsonData.DailyForecasts[1].Day.Icon + ".png"
            day2Icon.source = "qrc:/new/prefix1/"
                    + appBridge.JsonData.DailyForecasts[2].Day.Icon + ".png"
            day3Icon.source = "qrc:/new/prefix1/"
                    + appBridge.JsonData.DailyForecasts[3].Day.Icon + ".png"
            day4Icon.source = "qrc:/new/prefix1/"
                    + appBridge.JsonData.DailyForecasts[4].Day.Icon + ".png"
            //            day5Icon.source = "qrc:/new/prefix1/"
            //                    + appBridge.JsonData.DailyForecasts[5].Day.Icon + ".png"
            //            day6Icon.source = "qrc:/new/prefix1/"
            //                    + appBridge.JsonData.DailyForecasts[6].Day.Icon + ".png"
        }
    }
}
