import QtQuick 2.15

Rectangle {
    color: "transparent"
    HomeMode{
        anchors.fill: parent
        visible: appParams.mode1
    }
    ImageMode{
        anchors.fill: parent
        visible: appParams.mode2
    }
    MapMode{
        anchors.fill: parent
        visible: appParams.mode3
    }
    MusicMode{
        anchors.fill: parent
        visible: appParams.mode4
    }
    VideoMode{
        anchors.fill: parent
        visible: appParams.mode5
    }
    CallMode{
        anchors.fill: parent
        visible: appParams.mode6
    }
    SettingMode{
        anchors.fill: parent
        visible: appParams.mode7
    }
}
