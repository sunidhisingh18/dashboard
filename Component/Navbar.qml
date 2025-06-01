import QtQuick 2.15
import QtQuick.Controls

Rectangle{
    id: navbar
    height: parent.height * 0.1
    width: parent.width
    color: "white"
    property var stackView


    Rectangle{
           id: datetext
           width: parent.width / 14
           height: parent.height
           anchors.left: parent.left
           Text {
            id: dateText
            text: ""
            font.pixelSize: 10
            anchors.centerIn: parent
            anchors.fill: parent
            }
        }
        Row {
            id: iconcontainer
            width: parent.width * 12/14
            height: parent.height
            spacing: 20

            Rectangle {
                width: parent.width/12
                height: parent.height
                color:"transparent"
            }
            Rectangle {
                width: parent.width/12
                height: parent.height
                color:"transparent"
                Image {
                    id: leftindicator
                    source: "qrc:/IMAGES/icn_leftindicator.png"
                    height: 50
                    width: 50
                }
                MouseArea{
                  anchors.fill: parent
                     onClicked: {
                       console.log("rightindicatorclicked")
                       stackView.pop()
                     }
                }
            }
            Rectangle {
                width: parent.width/12
                height: parent.height
                color:"transparent"
                Image {
                    id: lowbeam
                    source: "qrc:/IMAGES/icn_lowbeam.png"
                    height: 50
                    width: 50
                }
            }
            Rectangle {
                width: parent.width/12
                height: parent.height
                color:"transparent"
                Image {
                    id: scooty
                    source: "qrc:/IMAGES/icn_sidestandenabled.png"
                    height: 50
                    width: 50
                }
            }
            Rectangle {
                width: parent.width/12
                height: parent.height
                color:"transparent"
                Image {
                    id: batterytemp
                    source: "qrc:/IMAGES/icn_batterytemp.png"
                    height: 50
                    width: 50
                }
            }
            Rectangle {
                width: parent.width/12
                height: parent.height
                color:"transparent"
                Image {
                    id: tyrepressure
                    source: "qrc:/IMAGES/icn_tyrepressure.png"
                    height: 50
                    width: 50
                }
            }
            Rectangle {
                width: parent.width/12
                height: parent.height
                color:"transparent"
                Image {
                    id: highbeam
                    source: "qrc:/IMAGES/icn_highbeam.png"
                    height: 50
                    width: 50
                }
            }
            Rectangle {
                width: parent.width/12
                height: parent.height
                color:"transparent"
                Image {
                    id: rightindicator
                    source: "qrc:/IMAGES/icn_rightindicator.png"
                    height: 50
                    width: 50
                }
            }

            Rectangle {
                width: parent.width/12
                height: parent.height
                color:"transparent"
                Image {
                    id: blutooth
                    source: "qrc:/IMAGES/eva_bluetooth-fill.png"
                    height: 50
                    width: 50
                }
            }

            Rectangle {
                width: parent.width/12
                height: parent.height
                color:"transparent"
                Image {
                    id: wifi
                    source: "qrc:/IMAGES/network-cellular-signal-excellent-svgrepo-com.png"
                    height: 30
                    width: 30
                }

            }
            Rectangle {
                width: parent.width/12
                height: parent.height
                color:"transparent"

            }

        }
        Rectangle {
            id: timetext
            width: parent.width / 14
            height: parent.height
            anchors.right: parent.right

            Text {
                id: timeText
                text: ""
                font.pixelSize: 10
                anchors.centerIn: parent

            }
        }

Timer {
    id: timer
    interval: 1000
    running: true
    repeat: true

onTriggered: {
      var current = new Date()
      timeText.text = current.toLocaleTimeString()
      dateText.text = current.toLocaleDateString()
    }
   }
  }








