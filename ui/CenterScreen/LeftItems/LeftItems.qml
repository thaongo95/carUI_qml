import QtQuick 2.15

Item {
    property int marginLarge: parent.height/15
    property int marginMedium: parent.height/30
    property int marginSmall: parent.height/45
    anchors{
        top: parent.top
        bottom: parent.bottom
        left: parent.left
        margins: marginMedium
    }

    width: parent.width/15
    ChooseModeButton{
        id: bt1
        anchors.top: parent.top
        iconSource: "qrc:/ui/assets/home.png"
        MouseArea{
            anchors.fill: parent
            onClicked:{
                appParams.setMode1(true)
                appParams.setMode2(false)
                appParams.setMode3(false)
                appParams.setMode4(false)
                appParams.setMode5(false)
                appParams.setMode6(false)
                appParams.setMode7(false)
            }
        }
    }
    ChooseModeButton{
        id: bt2
        anchors.top: bt1.bottom
        iconSource: "qrc:/ui/assets/image.png"
        MouseArea{
            anchors.fill: parent
            onClicked:{
                appParams.setMode1(false)
                appParams.setMode2(true)
                appParams.setMode3(false)
                appParams.setMode4(false)
                appParams.setMode5(false)
                appParams.setMode6(false)
                appParams.setMode7(false)
            }
        }
    }
    ChooseModeButton{
        id: bt3
        anchors.top: bt2.bottom
        iconSource: "qrc:/ui/assets/game-controller.png"
        MouseArea{
            anchors.fill: parent
            onClicked:{
                appParams.setMode1(false)
                appParams.setMode2(false)
                appParams.setMode3(true)
                appParams.setMode4(false)
                appParams.setMode5(false)
                appParams.setMode6(false)
                appParams.setMode7(false)
            }
        }
    }
    ChooseModeButton{
        id: bt4
        anchors.top: bt3.bottom
        iconSource: "qrc:/ui/assets/musical-note.png"
        MouseArea{
            anchors.fill: parent
            onClicked:{
                appParams.setMode1(false)
                appParams.setMode2(false)
                appParams.setMode3(false)
                appParams.setMode4(true)
                appParams.setMode5(false)
                appParams.setMode6(false)
                appParams.setMode7(false)
            }
        }
    }
    ChooseModeButton{
        id: bt5
        anchors.top: bt4.bottom
        iconSource: "qrc:/ui/assets/video-camera.png"
        MouseArea{
            anchors.fill: parent
            onClicked:{
                appParams.setMode1(false)
                appParams.setMode2(false)
                appParams.setMode3(false)
                appParams.setMode4(false)
                appParams.setMode5(true)
                appParams.setMode6(false)
                appParams.setMode7(false)
            }
        }
    }
    ChooseModeButton{
        id: bt6
        anchors.top: bt5.bottom
        iconSource: "qrc:/ui/assets/viber.png"
        MouseArea{
            anchors.fill: parent
            onClicked:{
                appParams.setMode1(false)
                appParams.setMode2(false)
                appParams.setMode3(false)
                appParams.setMode4(false)
                appParams.setMode5(false)
                appParams.setMode6(true)
                appParams.setMode7(false)
            }
        }
    }
    ChooseModeButton{
        id: bt7
        anchors.top: bt6.bottom
        iconSource: "qrc:/ui/assets/setting-lines.png"
        MouseArea{
            anchors.fill: parent
            onClicked:{
                appParams.setMode1(false)
                appParams.setMode2(false)
                appParams.setMode3(false)
                appParams.setMode4(false)
                appParams.setMode5(false)
                appParams.setMode6(false)
                appParams.setMode7(true)
            }
        }
    }

}
