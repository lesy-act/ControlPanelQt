import QtQuick 2.15

Item {
    Rectangle {
        width: parent.width
        height: parent.height
        color: "#FFDAB9"
        Rectangle {
            width: parent.width
            height: parent.height / 2
            color: "#008080"
        }

        Row {
            id: wheather6Days
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width
            height: parent.height
            spacing: 3

            Rectangle {
                id: day1
                width: parent.width / 6
                height: parent.height / 2
                color: "#00FA9A"

                anchors {
                    bottom: parent.bottom
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
            }

            Rectangle {
                id: day2
                width: parent.width / 6
                height: parent.height / 2
                color: "#9370DB"
                anchors {
                    bottom: parent.bottom
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
            }
            Rectangle {
                id: day3
                width: parent.width / 6
                height: parent.height / 2
                color: "#00FA9A"
                anchors {
                    bottom: parent.bottom
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
            }
            Rectangle {
                id: day4
                width: parent.width / 6
                height: parent.height / 2
                color: "#9370DB"
                anchors {
                    bottom: parent.bottom
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
            }
            Rectangle {
                id: day5
                width: parent.width / 6
                height: parent.height / 2
                color: "#00FA9A"
                anchors {
                    bottom: parent.bottom
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
            }
            Rectangle {
                id: day6
                width: parent.width / 6
                height: parent.height / 2
                color: "#9370DB"
                anchors {
                    bottom: parent.bottom
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
            }
        }
    }
} //        Grid {//            anchors.horizontalCenter: parent.horizontalCenter//            anchors.verticalCenter: parent.verticalCenter//            columns: 3//            spacing: 50//            Rectangle {//                id: day1//                width: 200//                height: 200//                color: "#1E90FF"//                Image {//                    id: day1Icon//                    width: 100//                    height: 100//                    source: "qrc:/new/prefix1/20.png"//                    anchors {//                        centerIn: parent//                    }//                }//            }//            Rectangle {//                id: day2//                width: 200//                height: 200//                color: "#1E90FF"//                Image {//                    id: day2Icon//                    width: 100//                    height: 100//                    source: "qrc:/new/prefix1/30.png"//                    anchors {//                        centerIn: parent//                    }//                }//            }//            Rectangle {//                id: day3//                width: 200//                height: 200
//                color: "#1E90FF"
//                Image {
//                    id: day3Icon
//                    width: 100
//                    height: 100
//                    source: "qrc:/new/prefix1/24.png"
//                    anchors {
//                        centerIn: parent
//                    }
//                }
//            }
//            Rectangle {
//                id: day4
//                width: 200
//                height: 200
//                color: "#1E90FF"
//                Image {
//                    id: day4Icon
//                    width: 100
//                    height: 100
//                    source: "qrc:/new/prefix1/31.png"
//                    anchors {
//                        centerIn: parent
//                    }
//                }
//            }
//            Rectangle {
//                id: day5
//                width: 200
//                height: 200
//                color: "#1E90FF"
//                Image {
//                    id: day5Icon
//                    width: 100
//                    height: 100
//                    source: "qrc:/new/prefix1/28.png"
//                    anchors {
//                        centerIn: parent
//                    }
//                }
//            }
//            Rectangle {
//                id: day6
//                width: 200
//                height: 200
//                color: "#1E90FF"
//                Image {
//                    id: day6Icon
//                    width: 100
//                    height: 100
//                    source: "qrc:/new/prefix1/37.png"
//                    anchors {
//                        centerIn: parent
//                    }
//                }
//            }
//        }
//    }
//    Image {
//        id: preButton
//        width: 100
//        height: 100
//        source: "qrc:/new/prefix1/previous.png"
//        anchors {
//            left: parent.left
//            leftMargin: 20
//            bottom: parent.bottom
//        }
//        MouseArea {
//            anchors.fill: parent
//            onClicked: {
//                stackView.pop()
//            }
//        }
//    }
//}

