import QtQuick 2.15
import QtQuick.Controls
import "../Component"

Rectangle {
    id : display
    width: parent.width
    height: parent.height
    color: "black"
    property var stackView

    Navbar{
        id: navbar
        width: parent.width
        height: parent.height*0.08
        anchors.top: parent.top
        stackView: parent.stackView
    }

    Sidebar{
        id: sidebar
        width: parent.width*0.2
        height: parent.height*0.8
        anchors.top: navbar.bottom
        anchors.left: parent.left
        stackView: parent.stackView
    }

    Rectangle{
        height: parent.height * 0.8
        width: parent.width* 0.8
        color: "#dcf3f3"
        anchors.left: sidebar.right
        anchors.top: navbar.bottom

        Rectangle{
           id: rect_1
           height: parent.height
           width: parent.width * 0.35
           color: "#dcf3f3"
           anchors.left:sidebar.right

        Image {
            id: scooty
            source: "qrc:/IMAGES/scooty.png"
            width: parent.width * 0.8
            height: parent.height * 0.6
            anchors.centerIn: parent



        }
      }

        Rectangle{
           id: rect_2
           height: parent.height * 0.8
           width: parent.width * 0.25
           color: "#dcf3f3"
           anchors.left: rect_1.right


           Column{
              spacing: 20
              anchors.centerIn: parent

              Text {
                 text: "People E Bike"
                 font.bold: true
                 font.pointSize: 12
              }

            Text {
                text: "white"
                font.bold: true
                font.pointSize: 10

            }

            Text {
                 text: "range: 180 km "

            }
            Text {
                text: "Top speed: 110 KMPH"
            }
            Text {
                text: "0 to 100% Charging: 3 hrs"

            }
        }

      }

        Rectangle{
           id: rect_3
           height: parent.height* 0.8
           width: parent.width * 0.20
           color: "#dcf3f3"
           anchors.left: rect_2.right

            Column{
               spacing: 10
               anchors.centerIn: parent


            Text {
                text: "ride mode : economy, regular, sports "

            }
            Text {
                text: "0 to 60 KMPH: 3.8 Sec"
            }
            Text {
                text: "Max power : 90 Hp"
            }

         }
        }
      }
  }


