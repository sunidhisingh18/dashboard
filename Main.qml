import QtQuick
import QtQuick.Window
import QtQuick.Controls
import "./Component"

Window {
    width: 800
    height: 480
    visible: true
    title: qsTr("hello world")

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: main
    }

    Rectangle{
        id: main
        height: parent.height
        width: parent.width

    Navbar {
        id: navbar
        width: parent.width
        height: parent.height * 0.1
        anchors.top: parent.top
        stackView: stackView
    }

    Footer {
        id: footer
        width: parent.width
        height: parent.height * 0.1
        anchors.bottom: parent.bottom
        stackView: stackView
    }

    Rectangle {
        id: mainComponent
        anchors.top: navbar.bottom
        anchors.bottom: footer.top
        anchors.left: parent.left
        anchors.right: parent.right
        color: "#dcf3f3"

        Rectangle {
            id: rect_1
            height: parent.height * 0.1
            width: parent.width
            anchors.top: parent.top
            color: "transparent"

            Row {
                id: topRow
                height: parent.height
                width: parent.width
                spacing: 10
                anchors.centerIn: parent

                Image {
                    source: "qrc:/IMAGES/icn_sidestandenabled.png"
                    height: 35
                    width: 35
                    anchors.verticalCenter: parent.verticalCenter
                }

                Text {
                    text: "Echo"
                    font.pointSize: 14
                    color: "green"
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }

        Rectangle {
            id: rect_2
            height: parent.height * 0.5
            width: parent.width
            anchors.top: rect_1.bottom
            color: "transparent"

            Rectangle {
                height: parent.height * 0.2
                width: parent.width
                color: "transparent"

                Column {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    spacing: 2

                    Text {
                        text: "76"
                        font.pixelSize: 40
                        font.bold: true
                        color: "black"
                        horizontalAlignment: Text.AlignHCenter
                    }

                    Text {
                        text: "KM/H"
                        font.pixelSize: 14
                        color: "black"
                        horizontalAlignment: Text.AlignHCenter
                    }
                }
            }

            Image {
                id: eagle
                source: "qrc:/IMAGES/7.png"
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                width: parent.width
                height: parent.height
            }
        }

        Rectangle {
            id: rect_3
            height: parent.height * 0.4
            width: parent.width
            anchors.top: rect_2.bottom
            color: "transparent"

            Rectangle {
                id: textrect_1
                height: parent.height * 0.3
                width: parent.width
                anchors.top: rect_3.top
                color: "transparent"

                Column {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 5

                    Text {
                        text: "Arcade"
                        font.pointSize: 14
                        color: "black"
                    }

                    Text {
                        text: "By Aliya Design"
                        font.pointSize: 12
                        color: "black"
                    }
                }
            }

            Rectangle {
                id: rectimage1
                height: parent.height * 0.3
                width: parent.width
                anchors.top: textrect_1.bottom
                color: "transparent"

                Row {
                    id: iconRow
                    spacing: 30
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter

                    Image {
                        id: firstpage
                        source: "qrc:/IMAGES/first_page.png"
                        width: 20
                        height: 20
                    }

                    Image {
                        id: pause
                        source: "qrc:/IMAGES/pause_paly.png"
                        width: 20
                        height: 20
                    }

                    Image {
                        id: lastpage
                        source: "qrc:/IMAGES/last_page.png"
                        width: 20
                        height: 20
                    }
                }
            }

            Rectangle {
                id: text_2
                height: parent.height * 0.2
                width: parent.width
                anchors.top: rectimage1.bottom
                color:"transparent"

                Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 80

                    Column {
                        spacing: 2
                        Text {
                            text: "23 m"
                            font.pointSize: 12
                            color: "black"
                        }
                        Text {
                            text: "Time"
                            font.pointSize: 10
                            color: "black"
                        }
                    }

                    Column {
                        spacing: 2
                        Text {
                            text: "136 km"
                            font.pointSize: 12
                            color: "black"
                        }
                        Text {
                            text: "Range"
                            font.pointSize: 10
                            color: "black"
                        }
                    }
                }
            }
        }
   } }
}
