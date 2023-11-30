import QtQuick 2.15
import QtQuick.Controls 1.5



Rectangle{
    anchors{
        right: parent.right
        bottom: parent.bottom
        left: parent.left
    }
    height: parent.height/2
    Calendar{
        anchors.fill:parent
        frameVisible: true
        weekNumbersVisible: true
        navigationBarVisible: true
        focus: true

        Rectangle{
            anchors.fill: parent
            color: appParams.app_Color
            opacity: 0.4
        }
    }
}
