import QtQuick 2.15

Rectangle {
    id: home
    color: "transparent"
    Image{
        anchors{
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: parent.height/6
        }
        height: sourceSize.height/3
        width: sourceSize.width/3
        fillMode: Image.PreserveAspectFit
        source: appParams.imgSource
    }
}
