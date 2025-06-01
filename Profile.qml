import QtQuick 2.15
import QtQuick.Controls
import "../Component"

Rectangle {
    height: parent.height
    width: parent.width
    anchors.fill: parent
    property var stackView

    Component.onCompleted: {
        console.log("stackView:", stackView)
    }

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
           stackView: parent.stackView

    }
    Rectangle{
        id: profilemain
        width: parent.width * 0.8
        height: parent.height * 0.9
        color:"#dcf3f3"
        anchors.left: sidebar.right
        anchors.top: navbar.bottom


       Rectangle{
            height: parent.height * 0.8
            width: parent.width
            color: "transparent"
            anchors.centerIn: parent
            anchors.top: navbar.bottom

            Column {
                 width: parent.width
                 spacing: 20
                 anchors.horizontalCenter: parent.horizontalCenter

                Image {
                    id: eagle
                    source: "qrc:/IMAGES/7.png"
                    height: 150
                    width: 200
                    anchors.horizontalCenter: parent.horizontalCenter
                            }
                Row {
                    width: parent.width
                    spacing: 30
                    anchors.horizontalCenter: parent.horizontalCenter


                Column {
                    Rectangle {
                        width: 250
                        height: 200
                        Image {
                            id: drivinglicense
                            source: "qrc:/IMAGES/driving.png"
                            anchors.fill: parent

                        }
                    }

                        Text {
                            text: "Driving License"
                            horizontalAlignment: Text.AlignHCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                                    }
                                }


                Column {
                    Rectangle {
                        width: 250
                        height: 200
                        Image {
                        id: pancard
                        source: "qrc:/IMAGES/pencard.png"
                        anchors.fill: parent

                        }
                    }
                         Text {
                             text: "Pan Card"
                                horizontalAlignment: Text.AlignHCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                     }
                 }


                Column {
                    Rectangle {
                        width: 250
                        height: 200
                        Image {
                            id: aadharcard
                            source: "qrc:/IMAGES/Adhaar.png"
                            anchors.fill: parent

                        }
                    }
                    Text {
                        text: "Aadhaar Card"
                        horizontalAlignment: Text.AlignHCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }
    }
  }
}





