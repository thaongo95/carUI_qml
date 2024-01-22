import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: music
    color: "transparent"
    property bool playFlag: true
    property variant playMode: ["qrc:/ui/assets/repeatone.png", "qrc:/ui/assets/shuffle(1).png", "qrc:/ui/assets/repeat.png"]
    property int modeIndex: 0
    property string songName: "Em Là Nhất"
    property string singerName: "Kis, Hoàng KayLee"
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
        text: music.songName
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
        text: music.singerName
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
        property int endTime: appParams.musicTime
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
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    musicListPopup.open()
                }
            }

            Popup{
                id: musicListPopup
                x: -music.width/5
                y: -music.height*4/5
                width: music.width/2
                height: music.height*3/4
                background: Rectangle{
                    color: Qt.lighter(appParams.app_Color, 1.3)
                    anchors.fill: parent
                }

                Rectangle{
                    id: popupContent
                    anchors.fill: parent
                    color: Qt.lighter(appParams.app_Color, 1.3)
                    ListModel{
                        id: musicList
                        ListElement{
                            musicName: "Anh khạc hay em khạc"
                            singer:"Khạc Việt"
                            duringTime: 204
                        }
                        ListElement{
                            musicName: "Có một tình yêu gọi là buông tay"
                            singer:"A Mộc"
                            duringTime: 202
                        }
                        ListElement{
                            musicName: "Hoa Cỏ Lau"
                            singer:"Phong Max"
                            duringTime: 242
                        }
                        ListElement{
                            musicName: "Cô Nương Của Cậu"
                            singer:"Lão Phàn Cách Vách"
                            duringTime: 256
                        }
                        ListElement{
                            musicName: "Tay Trái Chỉ Trăng"
                            singer:"Tát Đỉnh Đỉnh"
                            duringTime: 236
                        }
                        ListElement{
                            musicName: "Đường tôi chở em về"
                            singer:"Bùi Trường Linh"
                            duringTime: 190
                        }
                        ListElement{
                            musicName: "Bigcityboi"
                            singer:"Binz, Touliver"
                            duringTime: 195
                        }
                        ListElement{
                            musicName: "Ngã tư không đèn"
                            singer:"Trang, Khoa Vũ"
                            duringTime: 203
                        }
                        ListElement{
                            musicName: "LOSER"
                            singer:"BIGBANG"
                            duringTime: 178
                        }
                        ListElement{
                            musicName: "MONSTER"
                            singer:"BIGBANG"
                            duringTime: 216
                        }
                        ListElement{
                            musicName: "Sao Cũng Được"
                            singer:"Thành Đạt"
                            duringTime: 186
                        }
                        ListElement{
                            musicName: "Khuất Lối"
                            singer:"H-Kray"
                            duringTime: 234
                        }
                        ListElement{
                            musicName: "Nơi em muốn tới"
                            singer:"Hoaprox"
                            duringTime: 213
                        }
                        ListElement{
                            musicName: "Một Đêm Say"
                            singer:"Thịnh Suy"
                            duringTime: 208
                        }
                        ListElement{
                            musicName: "Họ Yêu Ai Mất Rồi"
                            singer:"BMZ, Doãn Hiếu"
                            duringTime: 192
                        }
                        ListElement{
                            musicName: "Anh khạc hay em khạc"
                            singer:"Khạc Việt"
                            duringTime: 204
                        }
                        ListElement{
                            musicName: "Có một tình yêu gọi là buông tay"
                            singer:"A Mộc"
                            duringTime: 202
                        }
                        ListElement{
                            musicName: "Hoa Cỏ Lau"
                            singer:"Phong Max"
                            duringTime: 242
                        }
                        ListElement{
                            musicName: "Cô Nương Của Cậu"
                            singer:"Lão Phàn Cách Vách"
                            duringTime: 256
                        }
                        ListElement{
                            musicName: "Tay Trái Chỉ Trăng"
                            singer:"Tát Đỉnh Đỉnh"
                            duringTime: 236
                        }
                        ListElement{
                            musicName: "Đường tôi chở em về"
                            singer:"Bùi Trường Linh"
                            duringTime: 190
                        }
                        ListElement{
                            musicName: "Bigcityboi"
                            singer:"Binz, Touliver"
                            duringTime: 195
                        }
                        ListElement{
                            musicName: "Ngã tư không đèn"
                            singer:"Trang, Khoa Vũ"
                            duringTime: 203
                        }
                        ListElement{
                            musicName: "LOSER"
                            singer:"BIGBANG"
                            duringTime: 178
                        }
                        ListElement{
                            musicName: "MONSTER"
                            singer:"BIGBANG"
                            duringTime: 216
                        }
                        ListElement{
                            musicName: "Sao Cũng Được"
                            singer:"Thành Đạt"
                            duringTime: 186
                        }
                        ListElement{
                            musicName: "Khuất Lối"
                            singer:"H-Kray"
                            duringTime: 234
                        }
                        ListElement{
                            musicName: "Nơi em muốn tới"
                            singer:"Hoaprox"
                            duringTime: 213
                        }
                        ListElement{
                            musicName: "Một Đêm Say"
                            singer:"Thịnh Suy"
                            duringTime: 208
                        }
                        ListElement{
                            musicName: "Họ Yêu Ai Mất Rồi"
                            singer:"BMZ, Doãn Hiếu"
                            duringTime: 192
                        }
                    }
                    Component{
                        id: musicDelegate
                        Rectangle{
                            width: musicListPopup.width
                            height: musicListPopup.height/10
                            radius: height/5
                            anchors.horizontalCenter: parent.horizontalCenter
                            Rectangle{
                                anchors{
                                    left: parent.left
                                    top: parent.top
                                    bottom: parent.bottom
                                }
                                width: parent.width*5/6
                                color: pressArea.pressed ? Qt.lighter(appParams.app_Color, 1.2) : Qt.lighter(appParams.app_Color, 1.5)
                                MouseArea{
                                    id: pressArea
                                    anchors.fill: parent
                                    onClicked: {
                                        music.songName = musicName
                                        music.singerName = singer
                                        appParams.setMusicTime(duringTime)
                                    }
                                }

                                Column{
                                    anchors.centerIn: parent
                                    Text{
                                        text: musicName
                                        font.pixelSize: 14
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        color: Qt.darker(appParams.app_Color, 1.2)
                                    }
                                    Text{
                                        text: singer
                                        font.pixelSize: 12
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        color: Qt.darker(appParams.app_Color, 1.2)
                                    }
                                }
                            }
                            Rectangle{
                                anchors{
                                    right: parent.right
                                    top: parent.top
                                    bottom: parent.bottom
                                }
                                width: parent.width/6
                                color: pressArea.pressed ? Qt.lighter(appParams.app_Color, 1.5) : Qt.lighter(appParams.app_Color, 1.8)
                                Text{
                                    anchors.centerIn: parent
                                    text: ((duringTime/60<10) ? ("0"+parseInt(duringTime/60)) : parseInt(duringTime/60)) + ":" +
                                          ((duringTime%60<10) ? ("0"+duringTime%60) : duringTime%60)
                                    font.pixelSize: 14
                                    color: Qt.darker(appParams.app_Color, 1.2)
                                }
                            }
                        }
                    }
                    ListView{
                        id: musicListView
                        model: musicList
                        delegate: musicDelegate
                        anchors.fill: parent
                        focus: true
                        spacing: 5
                        clip: true
                    }
                }
            }
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
