import QtQuick 2.15

Image {
    id: root_
    property alias iconSource: root_.source
    property int marginSmall: 10
    anchors{
        top: parent.top
        bottom: parent.bottom
        margins: marginSmall
    }
    fillMode: Image.PreserveAspectFit
}
