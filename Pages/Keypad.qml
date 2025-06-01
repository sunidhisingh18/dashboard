import QtQuick 2.15
import QtQuick.Controls
import "../Component"

Rectangle {
    width: parent.width
    height: parent.height
    color: "black"
    property var stackView

    Navbar {
        id: navbar
        width: parent.width
        height: parent.height * 0.1
        anchors.top: parent.top
        stackView: parent.stackView
    }

    Footer{
      id: footer
      height: parent.height * 0.1
      width: parent.width
      anchors.bottom: parent.bottom
      color:"white"
      stackView : parent.stackView

    }

    Rectangle {
        width: parent.width
        height: parent.height * 0.8
        anchors.top: navbar.bottom
        anchors.left: sidebar.right
        color: "#dcf3f3"

        Column {
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Rectangle {
                width: 180
                height: 40
                color: "white"
                radius: 8
            }


            Row {
                spacing: 10
                Rectangle {
                    width: 60
                    height: 60
                    color: "white"
                    radius: 8
                    Text {
                        anchors.centerIn: parent
                        text: "1"
                        font.pixelSize: 20
                    }
                }

                Rectangle {
                    width: 60
                    height: 60
                    color: "white"
                    radius: 8
                    Text {
                        anchors.centerIn: parent
                        text: "2"
                        font.pixelSize: 20
                    }
                }
                Rectangle {
                    width: 60
                    height: 60
                    color: "white"
                    radius: 8
                    Text {
                        anchors.centerIn: parent
                        text: "3"
                        font.pixelSize: 20
                    }
                }
            }


            Row {
                spacing: 10
                Rectangle {
                    width: 60
                    height: 60
                    color: "white"
                    radius: 8
                    Text {
                        anchors.centerIn: parent
                        text: "4"
                        font.pixelSize: 20
                    }
                }
                Rectangle {
                    width: 60
                    height: 60
                    color: "white"
                    radius: 8
                    Text {
                        anchors.centerIn: parent
                        text: "5"
                        font.pixelSize: 20
                    }
                }

                Rectangle {
                    width: 60
                    height: 60
                    color: "white"
                    radius: 8
                    Text {
                        anchors.centerIn: parent
                        text: "6"
                        font.pixelSize: 20
                    }
                }
            }


            Row{
                spacing: 10
                Rectangle {
                    width: 60
                    height: 60
                    color: "white"
                    radius: 8
                    Text {
                        anchors.centerIn: parent
                        text: "7"
                        font.pixelSize: 20
                    }
                }
                Rectangle {
                    width: 60
                    height: 60
                    color: "white"
                    radius: 8
                    Text { anchors.centerIn: parent
                        text: "8"
                        font.pixelSize: 20
                    }
                }
                Rectangle {
                    width: 60
                    height: 60
                    color: "white"
                    radius: 8
                    Text {
                        anchors.centerIn: parent
                        text: "9"
                        font.pixelSize: 20

                }
            }

        }

                Row {
                    spacing: 10
                    Rectangle {
                        width: 60
                        height: 60
                        color: "white"
                        radius: 8

                        Text {
                            anchors.centerIn: parent
                            text: "0"
                            font.pixelSize: 20
                        }
                    }


                    Rectangle {
                        width: 60
                        height: 60
                        color: "red"
                        radius: 8

                        Image {
                            anchors.centerIn: parent
                            source: "qrc:/IMAGES/Error.png"
                            width: 30
                            height: 30
                        }
                    }


                    Rectangle {
                        width: 60
                        height: 60
                        color: "green"
                        radius: 8

                        Image {
                            anchors.centerIn: parent
                            source: "qrc:/IMAGES/phone.png"
                            width: 30
                            height: 30
                        }
                    }
                }









        }
    }
}
