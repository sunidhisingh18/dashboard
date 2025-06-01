import QtQuick 2.15
import QtQuick.Controls 2.15


    Rectangle{
          id: footer
          width: parent.width
          height: parent.height * 0.10
          color: "transparent"
          anchors.bottom: parent.bottom
          property var stackView

          Row {
              id: iconRow
              width: parent.width
              height: parent.height
              spacing: 20
              anchors.centerIn: parent

            Rectangle{
                height: parent.height
                width: parent.width / 12
                color:"transparent"
            }
            Rectangle{
                height: parent.height
                width: parent.width / 12
                color: "transparent"
                Image {
                  id: home
                  source: "qrc:/IMAGES/home.png"
                  height: 50
                  width: 50
                }
            }
            Rectangle{
                height: parent.height
                width: parent.width / 12
                color: "transparent"
                Image {
                  id: map
                  source: "qrc:/IMAGES/map.png"
                  height: 50
                  width: 50
                }
            }
            Rectangle{
                height: parent.height
                width: parent.width / 12
                color: "transparent"
                Image {
                  id: calling
                  source: "qrc:/IMAGES/phone.png"
                  height: 50
                  width: 50
                }
            }
            Rectangle{
                height: parent.height
                width: parent.width / 12
                color: "transparent"
            }
            Rectangle{
                height: parent.height
                width: parent.width / 12
                color: "transparent"
            }
            Rectangle{
                height: parent.height
                width: parent.width / 12
                color: "transparent"
            }
            Rectangle{
                height: parent.height
                width: parent.width / 12
                color: "transparent"
                Image {
                  id: music
                  source: "qrc:/IMAGES/Music.png"
                  height: 50
                  width: 50
                }
            }
            Rectangle{
                height: parent.height
                width: parent.width / 12
                color: "transparent"
                Image {
                  id: petrol
                  source: "qrc:/IMAGES/petrol.png"
                  height: 50
                  width: 50
                }
            }
            Rectangle{
                height: parent.height
                width: parent.width / 12
                color: "transparent"
                Image {
                  id: setting
                  source: "qrc:/IMAGES/settings.png"
                  height: 50
                  width: 50
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        console.log("settingclick")
                        stackView.push("qrc:/Settingpage.qml")
                    }
                }

            }
            Rectangle{
                height: parent.height
                width: parent.width / 12
                color:"transparent"
            }
        }
    }



