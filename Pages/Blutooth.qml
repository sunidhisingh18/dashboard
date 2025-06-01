import QtQuick 2.15
import QtQuick.Controls
import "../Component"


Rectangle{
    height: parent.height
    width: parent.width
    color: "black"
    property var stackView


        Navbar{
              id: navbar
              width: parent.width
              height: parent.height*0.1
              anchors.top: parent.top
              stackView: parent.stackView
        }

        Sidebar{
               id: sidebar
               width: parent.width * 0.2
               height: parent.height * 0.8
               anchors.top: navbar.bottom
               anchors.left: parent.left
               stackView: parent.stackView
        }

        Rectangle{
            height: parent.height * 0.8
            width: parent.width * 0.8
            anchors.left: sidebar.right
            anchors.top: navbar.bottom
            color: "#dcf3f3"

            Column {
                spacing: 20
                anchors.margins: 30

                Text {
                    text: "Bluetooth"
                    font.pixelSize: 24
                    font.bold: true
                }

                Row {
                    spacing: 10

                    Rectangle {
                        width: 200
                        height: 40
                        color: "grey"
                        radius: 5

                Row {
                    anchors.centerIn: parent
                    spacing: 10

                    Image {
                        source: "qrc:/IMAGES/eva_bluetooth-fill -on (1).png"
                        width: 20
                        height: 20
                    }

                    Text {
                         text: "Bluetooth"
                         color: "white"
                    }

                    Switch {
                        id: btswitch
                        checked: false
                    }
                }
            }
       }

                    Text {
                    text: "Now Discover As: \"People E-Bike\""
                    font.pixelSize: 16
                    }

                    Text {
                        text: "Turn on your Bluetooth to connect with the device"
                        font.pixelSize: 16
                        }
                    }


                    Image {
                        source: "qrc:/IMAGES/scooty.png"
                        width: 300
                        height: 200
                        anchors.right: parent.right
                        anchors.rightMargin: 30
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }



