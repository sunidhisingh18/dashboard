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
               height: parent.height * 0.9
               anchors.top: navbar.bottom
               anchors.left: parent.left
               color: "#dcf3f3"
               stackView: parent.stackView

        }
        Rectangle{
            height: parent.height * 0.9
            width: parent.width * 0.8
            color: "#dcf3f3"
            anchors.left: sidebar.right
            anchors.top: navbar.bottom

            Rectangle{
                id: rect_1
                height: parent.height* 0.5
                width: parent.width
                color: "transparent"

                Column {
                    padding: 40
                    spacing: 30

                    Row {
                        width: parent.width
                        height: 40
                        spacing: 10
                        anchors.right: parent.right
                        anchors.rightMargin: 60

                        Text {
                            text: "Turn Indicator Sounds"
                            color: "black"
                            font.pointSize: 10
                            font.bold: true
                            anchors.verticalCenter: parent.verticalCenter
                        }

                        Rectangle {
                            width: 50
                            height: 25
                            color: "white"
                            radius: 12.5
                            border.color: "black"
                            border.width: 1


                            Rectangle{
                                width: 20
                                height: 20
                                radius: 10
                                color:"blue"
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.right:parent.right
                                anchors.rightMargin: 3

                            }

                        }
                    }

                    Row {
                        width: parent.width
                        height: 40
                        spacing: 10
                        anchors.right: parent.right
                        anchors.rightMargin:60

                        Text {
                            text: "Parking Assist Sounds"
                            color: "black"
                            font.pointSize: 10
                            font.bold: true
                            anchors.verticalCenter: parent.verticalCenter
                        }

                        Rectangle {
                            width: 50
                            height: 25
                            color: "blue"
                            radius: 12.5
                            anchors.verticalCenter: parent.verticalCenter
                            border.color: "black"
                            border.width: 1

                            Rectangle{
                                width: 20
                                height: 20
                                radius: 10
                                color:"black"
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                anchors.leftMargin: 3





                            }

                        }
                    }
                }

            }

    }
}
