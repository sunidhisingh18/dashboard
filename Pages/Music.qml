import QtQuick 2.15
import QtQuick.Controls
import "../Component"

Rectangle {
    width: parent.width
    height: parent.height
    color: "white"
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
        width: parent.width
        height: parent.height* 0.1
        anchors.bottom: parent.bottom
        stackView: parent.stackView
    }

    Rectangle{
        id:rect_1
        height: parent.height *0.8
        width: parent.width
        color: "#dcf3f3"
        anchors.left: sidebar.right
        anchors.top: navbar.bottom


        Rectangle{
            id: rect_2
            width: parent.width *0.2
            height:parent.height
            color: "transparent"
            anchors.left: parent.left
        }

        Rectangle{
            id:rect_3
            height: parent.height
            width: parent.width* 0.3
            anchors.left: rect_2.right
            color: "transparent"
        Image {
            id: music
            source: "qrc:/IMAGES/codex-omega.png"
            height: 150
            width: 150
            anchors.centerIn: parent

           }

         }
        Rectangle{
            id: rect_4
            height: parent.height
            width: parent.width* 0.3
            anchors.left: rect_3.right
            color: " transparent"


            Column{
                spacing: 10
                anchors.centerIn: parent

                Text {
                    text: "now playing"
                    color: "black"

                }
                Text {
                    text: "Purple Haze"
                    color:"black"
                    font.pointSize: 10

                }
                Text {
                    text: "Jonathan Wishperbrook"
                }
                Text {
                    text: "Woodstack"
                }


            }
        }

        Rectangle{
            id: rect_5
            height: parent.height
            width: parent.width* 0.2
            anchors.left: rect_4.right
            color: "transparent"

            Column{
                spacing: 10
                anchors.centerIn: parent

                Image {
                    id: like
                    source: "qrc:/IMAGES/Like.png"
                }

                Image {
                    id: addplalist
                    source: "qrc:/IMAGES/AddPlaylist.png"
                }

                Image {
                    id: share
                    source: "qrc:/IMAGES/Share.png"
                }
           }
        }


        Rectangle{
            id: rect_6
            height: parent.height
            width: parent.width* 0.2
            anchors.left: rect_5.right
            color: "transparent"
        }



    }

}
