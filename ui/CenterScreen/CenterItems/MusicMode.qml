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
                onClicked: music.playFlag =! music.playFlag
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
    }
}
