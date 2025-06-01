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
        }

        Sidebar{
               id: sidebar
               width: parent.width * 0.2
               height: parent.height * 0.9
               anchors.top: navbar.bottom
               anchors.left: parent.left

        }
        Rectangle{
            height: parent.height * 0.9
            width: parent.width * 0.8
            anchors.left: sidebar.right
            anchors.top: navbar.bottom
            color: "#dcf3f3"


            Column {
                spacing: 20
                padding: 40

                Text {
                    text: "Update"
                    font.pointSize: 16
                    font.bold: true
                    color: "black"
                }



            Rectangle {
                id: rect_1
                height: 60
                width: parent.width * 0.9
                color: "white"

                Text {
                    id: software
                    text:"Software"
                    padding: 10
                    font.pointSize: 10
                    font.bold: true

                }

                Rectangle{
                    id:rect_child
                    height: parent.height*0.8
                    width: parent.width* 0.8
                    anchors.centerIn: parent

                    Text {
                        id: text_child
                        text: "Update Available 5.15.11"
                        font.pointSize: 8
                        anchors.centerIn: parent
                    }

                }

                Rectangle{
                    id:rect_child1
                    height: parent.height*0.8
                    width: parent.width* 0.3
                    anchors.right: rect_1.right

                    Text {
                        id: text_child1
                        text: "Update"
                        font.pointSize: 10
                        color: "black"
                        font.bold: true
                        padding: 15

                    }
                }
            }
        }

}    }
