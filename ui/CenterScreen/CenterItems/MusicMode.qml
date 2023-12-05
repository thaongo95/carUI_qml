import QtQuick 2.15

Rectangle {
    id: music
    color: "transparent"
    property bool playFlag: true
    property variant playMode: ["qrc:/ui/assets/repeatone.png", "qrc:/ui/assets/shuffle(1).png", "qrc:/ui/assets/repeat.png"]
    property int modeIndex: 0
    Image{
        id: musiclabel
        anchors{
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: parent.height/10
        }
        height: parent.height/2
        width: height
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/music.png"
    }
    Text{
        id: nameSong
        text: "Name of Song"
        color: Qt.lighter(appParams.app_Color, 1.8)
        anchors{
            horizontalCenter: parent.horizontalCenter
            top: musiclabel.bottom
            topMargin: parent.height/30
        }
        font.pixelSize: 18
        font.wordSpacing: 10
    }
    Text{
        id: nameSinger
        text: "Singer"
        anchors{
            horizontalCenter: parent.horizontalCenter
            top: nameSong.bottom
            topMargin: parent.height/60
        }
        font.pixelSize: 14
    }
    Rectangle{
        id: processArea
        property int startTime: 0
        property int endTime: 195
        property real processValue: startTime/endTime
        anchors{
            horizontalCenter: parent.horizontalCenter
            top: nameSinger.bottom
            topMargin: parent.height/30
            bottom: parent.bottom
            bottomMargin: parent.height/15
        }
        width: parent.width/2
        color: Qt.lighter(appParams.app_Color, 1.8)
        Image{
            id: playBt
            anchors{
                horizontalCenter: parent.horizontalCenter
                bottom: parent.bottom
                bottomMargin: parent.height/10
            }
            height: parent.height/4
            width: height
            fillMode: Image.PreserveAspectFit
            source: (music.playFlag) ? "qrc:/ui/assets/play-button.png" : "qrc:/ui/assets/pause.png"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    if (music.playFlag){
                        timer.start()
                    }
                    else timer.stop()
                    music.playFlag =! music.playFlag
                }
            }
        }
        Image{
            id: nextBt
            anchors{
                verticalCenter: playBt.verticalCenter
                left: playBt.right
                leftMargin: parent.width/10
            }
            height: playBt.height
            width: height
            fillMode: Image.PreserveAspectFit
            source: "qrc:/ui/assets/forward-button.png"
        }
        Image{
            id: previousBt
            anchors{
                verticalCenter: playBt.verticalCenter
                right: playBt.left
                rightMargin: parent.width/10
            }
            height: playBt.height
            width: height
            rotation: 180
            fillMode: Image.PreserveAspectFit
            source: "qrc:/ui/assets/forward-button.png"
        }
        Image{
            id: menuBt
            anchors{
                verticalCenter: playBt.verticalCenter
                right: parent.right
                rightMargin: parent.width/10
            }
            height: playBt.height
            width: height
            fillMode: Image.PreserveAspectFit
            source: "qrc:/ui/assets/menu.png"
        }
        Image{
            id: modeBt
            anchors{
                verticalCenter: playBt.verticalCenter
                left: parent.left
                leftMargin: parent.width/10
            }
            height: playBt.height
            width: height
            fillMode: Image.PreserveAspectFit
            source: music.playMode[modeIndex]
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    if(music.modeIndex===2){
                        music.modeIndex=0
                    }
                    else{
                        music.modeIndex++
                    }
                }
            }
        }
        Timer{
            id: timer
            interval: 1000
            repeat: true
            onTriggered: {
                processArea.startTime++
                if (processArea.startTime===processArea.endTime){
                    timer.stop()
                    processArea.startTime=0
                    music.playFlag = false
                }

            }
        }
        Text{
            id: runTime
            text: ((processArea.startTime/60<10) ? ("0"+parseInt(processArea.startTime/60)) : parseInt(processArea.startTime/60)) + ":" +
                  ((processArea.startTime%60<10) ? ("0"+processArea.startTime%60) : processArea.startTime%60)
            anchors{
                top: processBar.bottom
                topMargin: parent.height/30
                left: processBar.left
            }
            font.pixelSize: 12
            color: Qt.darker(appParams.app_Color, 1.2)
        }
        Text{
            id: totalTime
            text: ((processArea.endTime/60<10) ? ("0"+parseInt(processArea.endTime/60)) : parseInt(processArea.endTime/60)) + ":" +
                  ((processArea.endTime%60<10) ? ("0"+processArea.endTime%60) : processArea.endTime%60)
            anchors{
                top: processBar.bottom
                topMargin: parent.height/30
                right: processBar.right
            }
            font.pixelSize: 12
            color: Qt.darker(appParams.app_Color, 1.2)
        }

        Rectangle{
            id: processBar
            anchors{
                horizontalCenter: parent.horizontalCenter
                top: parent.top
                topMargin: parent.height/6
            }
            width: parent.width*3/4
            height: parent.height/30
            color: Qt.lighter(appParams.app_Color, 1.2)
            Rectangle{
                id: runningBar
                anchors{
                    top: parent.top
                    left: parent.left
                    bottom: parent.bottom
                }
                width: processArea.processValue*parent.width
                color: Qt.darker(appParams.app_Color, 1.2)
            }
            Rectangle{
                id: runningCircle
                anchors{
                    verticalCenter: runningBar.verticalCenter
                    horizontalCenter: runningBar.right
                }
                height: runningBar.height*2
                width: height
                radius: width/2
                color: Qt.darker(appParams.app_Color, 1.5)
            }
        }
    }
}
