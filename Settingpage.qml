import QtQuick 2.15
import QtQuick.Controls
import "./Component"
import QtQuick.Layouts

Rectangle {
    height: parent.height
    width: parent.width
    color: "black"
    anchors.fill: parent

    Navbar{
          id: navbar_1
          width: parent.width
          height: parent.height*0.1
          anchors.top: parent.top

    }

    Rectangle{
      id: container
      color: "white"
      height: parent.height * 0.7
      width: 200
      anchors.left: parent.left


      RowLayout{
        anchors.fill: parent
      }


      ColumnLayout{
        anchors.fill: parent
        spacing: 10

        Rectangle{
          height: 50
          width: 100
          id: profile

          Text {
            id: profileText
            text: "profile"
            anchors.centerIn: parent
            anchors.fill: parent
            font.pointSize: 15
            font.bold: true
          }
        }
        Rectangle{
          id: display
          height: 50
          width: 100
          Text {
            id: displayText
            text: "Display"
            anchors.centerIn: parent
            anchors.fill: parent
            font.pointSize: 15
            font.bold: true
          }
        }
        Rectangle{
          id: blutooth
          height: 50
          width: 100
          Text {
            id: blutoothText
            text: "blutooth"
            anchors.centerIn: parent
            anchors.fill: parent
            font.pointSize: 15
            font.bold: true
          }
        }
        Rectangle{
          id: mytrip
          height: 50
          width: 100
          Text {
            id: mytripText
            text: "mytrip"
            anchors.centerIn: parent
            anchors.fill: parent
            font.pointSize: 15
            font.bold: true
          }
        }
        Rectangle{
          id: sound
          height: 50
          width: 100
          Text {
            id: soundText
            text: "Sound"
            anchors.centerIn: parent
            anchors.fill: parent
            font.pointSize: 15
            font.bold: true
          }
        }
        Rectangle{
          id: about
          height: 50
          width: 100
          Text {
            id: aboutText
            text: "About"
            anchors.centerIn: parent
            anchors.fill: parent
            font.pointSize: 15
            font.bold: true
          }
        }
        Rectangle{
          id: notification
          height: 50
          width: 100
          Text {
            id: notificationText
            text: "Notification"
            anchors.centerIn: parent
            anchors.fill: parent
            font.pointSize: 15
            font.bold: true
          }
        }
        Rectangle{
          id: systemupdate
          height: 50
          width: 100
          Text {
            id: systemupdateText
            text: "System Update"
            anchors.centerIn: parent
            font.pointSize: 15
            font.bold: true
            anchors.fill: parent
          }
        }
      }

    }

  }
