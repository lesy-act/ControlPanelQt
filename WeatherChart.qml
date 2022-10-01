import QtQuick 2.15
import QtCharts 2.15
import QtQuick.Controls 2.15

Item {
    Connections {
        target: appBridge
    }
    Rectangle {
        width: parent.width
        height: parent.height
        color: "#AFEEEE"
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
        Rectangle {
            width: 500
            height: 500
            color: "#AFEEEE"
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            //            anchors.rightMargin: 30
            ChartView {
                theme: ChartView.ChartThemeBlueCerulean
                title: "Weather Chart"
                anchors.fill: parent
                antialiasing: true

                LineSeries {
                    name: "Temp"
                    color: "Red"
                    width: 3
                    XYPoint {
                        x: 0
                        y: appBridge.JsonData.list[0].main.temp
                    }
                    XYPoint {
                        x: 1
                        y: appBridge.JsonData.list[1].main.temp
                    }
                    XYPoint {
                        x: 2
                        y: appBridge.JsonData.list[2].main.temp
                    }
                    XYPoint {
                        x: 3
                        y: appBridge.JsonData.list[3].main.temp
                    }
                    XYPoint {
                        x: 4
                        y: appBridge.JsonData.list[4].main.temp
                    }
                    XYPoint {
                        x: 5
                        y: appBridge.JsonData.list[5].main.temp
                    }
                    XYPoint {
                        x: 6
                        y: appBridge.JsonData.list[6].main.temp
                    }
                    XYPoint {
                        x: 7
                        y: appBridge.JsonData.list[7].main.temp
                    }
                }

                //            LineSeries {
                //                name: "tempMin"
                //                color: "Blue"
                //                XYPoint {
                //                    x: 0
                //                    y: appBridge.JsonData.list[0].main.temp
                //                }
                //                XYPoint {
                //                    x: 1
                //                    y: appBridge.JsonData.list[7].main.temp
                //                }
                //                XYPoint {
                //                    x: 2
                //                    y: appBridge.JsonData.list[14].main.temp
                //                }
                //                XYPoint {
                //                    x: 3
                //                    y: appBridge.JsonData.list[20].main.temp
                //                }
                //                XYPoint {
                //                    x: 4
                //                    y: appBridge.JsonData.list[24].main.temp
                //                }
                //            }
            }
        }
    }
    DetailWeather {
        firstSlider.onValueChanged: {
            firstGauge.value = firstSlider.value
        }
    }
}
