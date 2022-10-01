import QtQuick 2.15

Item {
    id: root
    property string pathIconCurrentDay: ""
    property string pathIconDay1: ""
    property string pathIconDay2: ""
    property string pathIconDay3: ""
    property string pathIconDay4: ""
    property string date1: "Day 1"
    property string date2: "Day 2"
    property string date3: "Day 3"
    property string date4: "Day 4"
    property string tempMaxCurrentDay_: ""
    property string tempMinCurrentDay_: ""
    property string tempMaxDay1: ""
    property string tempMinDay1: ""
    property string tempMaxDay2: ""
    property string tempMinDay2: ""
    property string tempMaxDay3: ""
    property string tempMinDay3: ""
    property string tempMaxDay4: ""
    property string tempMinDay4: ""
    Image {
        id: weatherBackGround
        source: "qrc:/new/prefix1/bg2.png"
        width: parent.width
        height: parent.height
    }
    Item {
        id: foo
        width: parent.width
        height: parent.height / 2
        Text {
            id: timeText
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            color: "#008B8B"
            font.pixelSize: 105
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
        Text {
            id: myDate
            color: "#008B8B"
            anchors.top: timeText.bottom
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
        Image {
            id: currentWeatherDayIcon
            width: 250
            height: 150
            source: pathIconCurrentDay
            anchors.top: myDate.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 20
        }
        Grid {
            columns: 2
            spacing: 80
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: currentWeatherDayIcon.bottom
            anchors.topMargin: 10
            Text {
                id: tempMaxCurrentDay
                text: qsTr(tempMaxCurrentDay_)
                font.pixelSize: 30
                color: "Red"
                font.family: "Segoe UI Black"
            }
            Text {
                id: tempMinCurrentDay
                text: qsTr(tempMinCurrentDay_ + "°C")
                font.pixelSize: 30
                color: "Blue"
                font.family: "Segoe UI Black"
            }
        }
        Item {
            anchors.left: currentWeatherDayIcon.right
            anchors.leftMargin: 20
            anchors.bottom: currentWeatherDayIcon.bottom
            anchors.bottomMargin: 150
            Grid {
                columns: 2
                spacing: 20
                Image {
                    id: locationIcon
                    width: 30
                    height: 30
                    source: "qrc:/new/prefix1/HnLocation.png"
                    anchors.left: myDate.right
                }
                Text {
                    id: locationText
                    text: qsTr("HaNoi City, VietNam")
                    font.pixelSize: 25
                    color: "#008B8B"
                    font.family: "Segoe UI Black"
                }
                Text {
                    id: statusCurrentDay
                    anchors {
                        left: locationText.left
                        top: locationText.bottom
                        topMargin: 20
                    }
                    font.pixelSize: 18
                    color: "#008B8B"
                    font.family: "Segoe UI Black"
                    text: qsTr(
                              appBridge.JsonData.list[0].weather[0].description)
                }
            }
        }
    }
    Grid {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        spacing: 20
        columns: 4
        Rectangle {
            radius: 10
            width: 250
            height: 250
            color: "#C4EFFF"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    stackView.push("DetailWeather.qml")
                }
            }

            Image {
                width: 200
                height: 150
                id: weatherDay1Img
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
                source: pathIconDay1
            }
            Text {
                id: day1Text
                color: "#008B8B"
                font.pixelSize: 20
                font.family: "Segoe UI Black"
                text: qsTr(date1)
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Image {
                width: 40
                height: 35
                id: tempMaxIcon1
                anchors {
                    top: parent.top
                    left: parent.left
                    leftMargin: 30
                    topMargin: 220
                }
                source: "qrc:/new/prefix1/tempMax.png"
            }
            Image {
                width: 40
                height: 35
                id: tempMinIcon1
                anchors {

                    top: parent.top
                    left: parent.left
                    leftMargin: 40
                    topMargin: 270
                }
                source: "qrc:/new/prefix1/tempMin.png"
            }
            Text {
                id: tempMaxDay1txt
                color: "Red"
                font.pixelSize: 20
                font.family: "Segoe UI Emoji"
                anchors.left: tempMaxIcon1.right
                anchors.top: parent.top
                anchors.topMargin: 220
                text: qsTr(tempMaxDay1)
            }
            Text {
                id: tempMinDay1txt
                color: "#008B8B"
                font.pixelSize: 20
                font.family: "Segoe UI Emoji"
                anchors.left: tempMinIcon1.right
                anchors.top: parent.top
                anchors.topMargin: 270
                text: qsTr(tempMinDay1)
            }
        }
        Rectangle {
            radius: 10
            width: 250
            height: 300
            color: "#C4EFFF"
            Image {
                width: 200
                height: 150
                id: weatherDay2Img
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
                source: pathIconDay2
            }
            Text {
                id: day2Text
                color: "#008B8B"
                font.pixelSize: 20
                font.family: "Segoe UI Black"
                text: qsTr(date2)
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Image {
                width: 40
                height: 35
                id: tempMaxIcon2
                anchors {
                    top: parent.top
                    left: parent.left
                    leftMargin: 30
                    topMargin: 220
                }
                source: "qrc:/new/prefix1/tempMax.png"
            }
            Image {
                width: 40
                height: 35
                id: tempMinIcon2
                anchors {

                    top: parent.top
                    left: parent.left
                    leftMargin: 40
                    topMargin: 270
                }
                source: "qrc:/new/prefix1/tempMin.png"
            }
            Text {
                id: tempMaxDay2txt
                color: "Red"
                font.pixelSize: 20
                font.family: "Segoe UI Emoji"
                anchors.left: tempMaxIcon2.right
                anchors.top: parent.top
                anchors.topMargin: 220
                text: qsTr(tempMaxDay2)
            }
            Text {
                id: tempMinDay2txt
                color: "#008B8B"
                font.pixelSize: 20
                font.family: "Segoe UI Emoji"
                anchors.left: tempMinIcon2.right
                anchors.top: parent.top
                anchors.topMargin: 270
                text: qsTr(tempMinDay2)
            }
        }
        Rectangle {
            radius: 10
            width: 250
            height: 300
            color: "#C4EFFF"
            Image {
                width: 200
                height: 150
                id: weatherDay3Img
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
                source: pathIconDay3
            }
            Text {
                id: day3Text
                color: "#008B8B"
                font.pixelSize: 20
                font.family: "Segoe UI Black"
                text: qsTr(date3)
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Image {
                width: 40
                height: 35
                id: tempMaxIcon3
                anchors {
                    top: parent.top
                    left: parent.left
                    leftMargin: 30
                    topMargin: 220
                }
                source: "qrc:/new/prefix1/tempMax.png"
            }
            Image {
                width: 40
                height: 35
                id: tempMinIcon3
                anchors {

                    top: parent.top
                    left: parent.left
                    leftMargin: 40
                    topMargin: 270
                }
                source: "qrc:/new/prefix1/tempMin.png"
            }
            Text {
                id: tempMaxDay3txt
                color: "Red"
                font.pixelSize: 20
                font.family: "Segoe UI Emoji"
                anchors.left: tempMaxIcon3.right
                anchors.top: parent.top
                anchors.topMargin: 220
                text: qsTr(tempMaxDay3)
            }
            Text {
                id: tempMinDay3txt
                color: "#008B8B"
                font.pixelSize: 20
                font.family: "Segoe UI Emoji"
                anchors.left: tempMinIcon3.right
                anchors.top: parent.top
                anchors.topMargin: 270
                text: qsTr(tempMinDay3)
            }
        }
        Rectangle {
            radius: 10
            width: 250
            height: 300
            color: "#C4EFFF"
            Image {
                width: 200
                height: 150
                id: weatherDay4Img
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
                source: pathIconDay4
            }
            Text {
                id: day4Text
                color: "#008B8B"
                font.pixelSize: 20
                font.family: "Segoe UI Black"
                text: qsTr(date4)
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Image {
                width: 40
                height: 35
                id: tempMaxIcon4
                anchors {
                    top: parent.top
                    left: parent.left
                    leftMargin: 30
                    topMargin: 220
                }
                source: "qrc:/new/prefix1/tempMax.png"
            }
            Image {
                width: 40
                height: 35
                id: tempMinIcon4
                anchors {

                    top: parent.top
                    left: parent.left
                    leftMargin: 40
                    topMargin: 270
                }
                source: "qrc:/new/prefix1/tempMin.png"
            }
            Text {
                id: tempMaxDay4txt
                color: "Red"
                font.pixelSize: 20
                font.family: "Segoe UI Emoji"
                anchors.left: tempMaxIcon4.right
                anchors.top: parent.top
                anchors.topMargin: 220
                text: qsTr(tempMaxDay4)
            }
            Text {
                id: tempMinDay4txt
                color: "#008B8B"
                font.pixelSize: 20
                font.family: "Segoe UI Emoji"
                anchors.left: tempMinIcon4.right
                anchors.top: parent.top
                anchors.topMargin: 270
                text: qsTr(tempMinDay4)
            }
        }
    }

    Connections {
        target: appBridge
        onDataChanged: {
            pathIconCurrentDay = "qrc:/Img/" + appBridge.JsonData.list[0].weather[0].icon + ".png"
            pathIconDay1 = "qrc:/Img/" + appBridge.JsonData.list[7].weather[0].icon + ".png"
            pathIconDay2 = "qrc:/Img/" + appBridge.JsonData.list[14].weather[0].icon + ".png"
            pathIconDay3 = "qrc:/Img/" + appBridge.JsonData.list[20].weather[0].icon + ".png"
            pathIconDay4 = "qrc:/Img/" + appBridge.JsonData.list[24].weather[0].icon + ".png"
            tempMaxCurrentDay_ = (appBridge.JsonData.list[0].main.temp_max) + "°C"
            tempMinCurrentDay_ = (appBridge.JsonData.list[0].main.temp_min) + "°C"
            tempMaxDay1 = (appBridge.JsonData.list[7].main.temp_max) + "°C"
            tempMinDay1 = (appBridge.JsonData.list[7].main.temp_min) - 2.34 + "°C"
            tempMaxDay2 = (appBridge.JsonData.list[14].main.temp_max) + "°C"
            tempMinDay2 = (appBridge.JsonData.list[14].main.temp_min) - 1.24 + "°C"
            tempMaxDay3 = (appBridge.JsonData.list[20].main.temp_max) + "°C"
            tempMinDay3 = (appBridge.JsonData.list[20].main.temp_min) - 3.34 + "°C"
            tempMaxDay4 = (appBridge.JsonData.list[24].main.temp_max) + "°C"
            tempMinDay4 = (appBridge.JsonData.list[24].main.temp_min) - 3.24 + "°C"
        }
    }

    Image {
        id: returnBt
        width: 50
        height: 50
        anchors {
            right: parent.right
        }
        source: "qrc:/new/prefix1/return.png"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                stackView.pop()
            }
        }
    }
}
