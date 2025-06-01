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
               height: parent.height * 0.8
               anchors.top: navbar.bottom
               anchors.left: parent.left

        }
        Rectangle{
            height: parent.height * 0.5
            width: parent.width * 0.5

        }
    }
