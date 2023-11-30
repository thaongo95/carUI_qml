import QtQuick 2.15

Rectangle {
    id: root_
    property alias iconSource: icon.source
    property int marginSmall: 3
    radius: width/10
    color: Qt.lighter(appParams.app_Color, 1.5)
    border.width: 5
    border.color: appParams.app_Color
    anchors{
        left: parent.left
        right: parent.right
    }
    height: parent.height/7
    Image{
        id: icon
        height: parent.height*1/3
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }
}
