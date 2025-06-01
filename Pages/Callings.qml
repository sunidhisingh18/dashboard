import QtQuick 2.15
import QtQuick.Controls
import "../Component"

Rectangle {
    width: parent.width
    height: parent.height
    color: "black"
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
      height: parent.height * 0.1
      width: parent.width
      anchors.bottom: parent.bottom
      color:"white"
      stackView : parent.stackView

    }

    Rectangle{
        id: rect_1
        height: parent.height* 0.8
        width: parent.width
        color:"#dcf3f3"
        anchors.top: navbnar.bottom
        anchors.bottom: footer.top

        Rectangle{
            id: rect_2
            height: parent.height * 0.25
            width: parent.width
            anchors.top: navbar.bottom
            color: "transparent"
            anchors.topMargin: 20


            Image {
                id: image
                source: "qrc:/IMAGES/image.png"
                height: parent.height* 0.8
                width: parent.width* 0.1
                anchors.centerIn: parent

            }

        }
        Rectangle{
            id: rect_3
            height: parent.height * 0.25
            width: parent.width
            anchors.top: rect_2.bottom
            color: "transparent"

            Column{
                spacing: 15
                anchors.centerIn: parent

            Text {

                text: "Jonathan"
                font.pointSize: 10

            }

            Text {

                text: "calling"
                font.pointSize: 8
            }
          }

        }
        Rectangle{
            id: rect_4
            height: parent.height * 0.25
            width: parent.width
            anchors.top: rect_3.bottom
            color: "transparent"

            Rectangle{
                id: rect_child
                height: parent.height* 0.7
                width: parent.width* 0.6
                anchors.centerIn: parent
                color:"transparent"

            Row{
                height: parent.height
                width: parent.width
                spacing: 20



                Rectangle{
                    id: iconcontainer_1
                    height: parent.height* 0.85
                    width: parent.width* 0.2
                    color: "transparent"

                    Image {
                        source: "qrc:/IMAGES/eva_keypad-fill.png"
                        height: parent.height*0.5
                        width: parent.width* 0.4
                        anchors.centerIn: parent
                    }

                    MouseArea{
                      anchors.fill: parent
                         onClicked: {
                           console.log("Keypadclicked")
                             stackView.push("../Pages/Keypad.qml", {stackView : stackView})


                         }
                    }
                }
                Rectangle{
                    id: iconcontainer_2
                    height: parent.height* 0.85
                    width: parent.width* 0.2
                    color: "transparent"
                    Image {
                        source: "qrc:/IMAGES/fluent_call-add-20-filled.png"
                        height: parent.height*0.5
                        width: parent.width* 0.4
                        anchors.centerIn: parent
                        }
                    }
                Rectangle{
                    id: iconcontainer_3
                    height: parent.height* 0.85
                    width: parent.width* 0.2
                    color: "transparent"
                    Image {
                        source: "qrc:/IMAGES/bi_mic-mute-fill.png"
                        height: parent.height*0.5
                        width: parent.width* 0.4
                        anchors.centerIn: parent
                        }
                    }
                Rectangle{
                    id: iconcontainer_4
                    height: parent.height* 0.85
                    width: parent.width* 0.2
                    color: "red"


                    Image {
                        source: "qrc:/IMAGES/calling.png"
                        height: parent.height*0.5
                        width: parent.width* 0.4
                        anchors.centerIn: parent

                        }
                    }


            }







         }

       }

    }
}
