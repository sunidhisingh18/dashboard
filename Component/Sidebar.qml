import QtQuick 2.15
import QtQuick.Controls
import "../Pages"


Rectangle{
      id: container
      width: parent.width * 0.2
      height: parent.height * 0.8
      anchors.left: parent.left
      anchors.top: navbar.bottom
      color: "#dcf3f3"
      property var stackView

      Component.onCompleted: {
          console.log("stackView:", stackView)
      }


      Column{
        height: parent.height
        width: parent.width
        spacing: 5
        anchors.top: parent.top
        anchors.topMargin: 10

        Rectangle{
          id: profile
          height: parent.height * 0.1
          width: parent.width * 0.8
          anchors.horizontalCenter: parent.horizontalCenter
          color:"transparent"


          Text {
             id: profileText
             text: "Profile"
             anchors.centerIn: parent
          }

          MouseArea{
              anchors.fill: parent
              onClicked: {
                  console.log("profile clicked")
                  stackView.push("../Pages/Profile.qml", {stackView : stackView})

              }

            }
         }

        Rectangle{
          id: display
          height:parent.height * 0.1
          width: parent.width * 0.8
          anchors.horizontalCenter: parent.horizontalCenter
          color:"transparent"

          Text {
            id: displayText
            text: "Display"
            anchors.centerIn: parent


          }
        }
        Rectangle{
          id: blutooth
          height:parent.height * 0.1
          width: parent.width * 0.8
          anchors.horizontalCenter: parent.horizontalCenter
          color:"transparent"
          Text {
            id: blutoothText
            text: "Blutooth"
            anchors.centerIn: parent

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("blutooth clicked")
                    stackView.push("../Pages/Blutooth.qml", {stackView : stackView})

           }

          }


          }
        }
        Rectangle{
          id: mytrip
          height:parent.height * 0.1
          width: parent.width * 0.8
          anchors.horizontalCenter: parent.horizontalCenter
          color:"transparent"
          Text {
            id: mytripText
            text: "Mytrip"
            anchors.centerIn: parent

          }
        }
        Rectangle{
          id: sound
          height:parent.height * 0.1
          width: parent.width * 0.8
          anchors.horizontalCenter: parent.horizontalCenter
          color:"transparent"
          Text {
            id: soundText
            text: "Sound"
            anchors.centerIn: parent

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("soundclicked")
                    stackView.push("../Pages/Sounds.qml", {stackView : stackView})

           }

          }
          }
        }
        Rectangle{
          id: about
          height:parent.height * 0.1
          width: parent.width * 0.8
          anchors.horizontalCenter: parent.horizontalCenter
          color:"transparent"
          MouseArea{
              anchors.fill: parent
              onClicked: {
                  console.log("About clicked")
                        stackView.push("qrc:/Pages/About.qml",{stackView : stackView})

              }
          }
          Text {
            id: aboutText
            text: "About"
            anchors.centerIn: parent
          }
        }

        Rectangle{
          id: notification
          height:parent.height * 0.1
          width: parent.width * 0.8
          anchors.horizontalCenter: parent.horizontalCenter
          color:"transparent"
          Text {
            id: notificationText
            text: "Notification"
            anchors.centerIn: parent

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Notification clicked")
                    stackView.push("../Pages/Notification.qml", {stackView : stackView})
           }
         }

       }

    }
        Rectangle{
          id: systemupdate
          height:parent.height * 0.1
          width: parent.width * 0.8
          anchors.horizontalCenter: parent.horizontalCenter
          color:"transparent"
          Text {
            id: systemupdateText
            text: "System Update"
            anchors.centerIn: parent

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("systemupdateclicked")
                    stackView.push("../Pages/SystemUpdate.qml", {stackView : stackView})

           }

          }

        }

      }

    }
}










