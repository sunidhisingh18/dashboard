import QtQuick 2.15
import QtQuick.Controls
import "../Component"

Rectangle {
    height: parent.height
    width: parent.width
    color: "black"
    property var stackView

    Navbar {
        id: navbar
        width: parent.width
        height: parent.height * 0.1
        anchors.top: parent.top
        stackView: parent.stackView
    }

    Sidebar {
        id: sidebar
        width: parent.width * 0.2
        height: parent.height * 0.9
        anchors.top: navbar.bottom
        anchors.left: parent.left
        stackView: parent.stackView
    }

    Rectangle {
        height: parent.height * 0.9
        width: parent.width * 0.8
        anchors.left: sidebar.right
        anchors.top: navbar.bottom
        color: "#dcf3f3"

        Column {
            spacing: 20
            padding: 40

            Text {
                text: "Notification"
                font.pointSize: 16
                font.bold: true
                color: "black"
            }


            Rectangle {
                id: successrectangle
                height: 60
                width: parent.width * 0.9
                color: "white"
                radius: 8

                Row {
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 10

                    Rectangle {
                        width: 30
                        height: 30
                        color: "green"
                        radius: 15

                        Image {
                            source: "qrc:/IMAGES/Success.png"
                            anchors.centerIn: parent
                            width: 18
                            height: 18
                        }
                    }

                    Column {
                        spacing: 2
                        Text {
                            text: "Success"
                            font.bold: true
                            color: "black"
                        }
                        Text {
                            text: "Order Placed Successfully. Thank You For Shopping With Us."
                            font.pointSize: 10
                            color: "black"
                        }
                    }
                }
            }


            Rectangle {
                id: errorrectangle
                height: 60
                width: parent.width * 0.9
                color: "white"
                radius: 8

                Row {
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 10

                    Rectangle {
                        width: 30
                        height: 30
                        color: "red"
                        radius: 15

                        Image {
                            source: "qrc:/IMAGES/Error.png"
                            anchors.centerIn: parent
                            width: 18
                            height: 18
                        }
                    }

                    Column {
                        spacing: 2
                        Text {
                            text: "Error"
                            font.bold: true
                            color: "black"
                        }
                        Text {
                            text: "Payment For Order Could Not Be Proceeded. Please Try Again."
                            font.pointSize: 10
                            color: "black"
                        }
                    }
                }
            }


            Rectangle {
                id: warningrectangle
                height: 60
                width: parent.width * 0.9
                color: "white"
                radius: 8

                Row {
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 10

                    Rectangle {
                        width: 30
                        height: 30
                        color: "orange"
                        radius: 15

                        Image {
                            source: "qrc:/IMAGES/Warning.png"
                            anchors.centerIn: parent
                            width: 18
                            height: 18
                        }
                    }

                    Column {
                        spacing: 2
                        Text {
                            text: "Warning"
                            font.bold: true
                            color: "black"
                        }
                        Text {
                            text: "Order Will Not Be Delivered In This Pincode. Please Try Other Pincode."
                            font.pointSize: 10
                            color: "black"
                        }
                    }
                }
            }


            Rectangle {
                id: inforectangle
                height: 60
                width: parent.width * 0.9
                color: "white"
                radius: 8

                Row {
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 10

                    Rectangle {
                        width: 30
                        height: 30
                        color: "blue"
                        radius: 15

                        Image {
                            source: "qrc:/IMAGES/Info.png"
                            anchors.centerIn: parent
                            width: 18
                            height: 18
                        }
                    }

                    Column {
                        spacing: 2
                        Text {
                            text: "Info"
                            font.bold: true
                            color: "black"
                        }
                        Text {
                            text: "You Will Receive A Tracking Link As Soon As Your Order Ships."
                            font.pointSize: 10
                            color: "black"
                        }
                    }
                }
            }
}    }  }
