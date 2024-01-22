import QtQuick 2.15
import QtQuick.Window 2.15
import "./BottomItems"
import "./CenterItems"
import "./LeftItems"
import "./RightItems"


Rectangle {
    anchors{
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }
    height: parent.height*14/15
    color: appParams.app_Color
    LeftItems{
        id: leftScreen
        anchors{
            top: parent.top
            bottom: bottomScreen.top
            left: parent.left
            margins: marginMedium
        }
    }
    RightItems{
        id: rightScreen
        anchors{
            top: parent.top
            bottom: bottomScreen.top
            right: parent.right
            margins: parent.height/30
        }
    }
    BottomItems{
        id: bottomScreen
    }

    CenterItems{
        id: centerScreen
        anchors{
            top: parent.top
            bottom: bottomScreen.top
            right: rightScreen.left
            left: leftScreen.right
            margins: parent.height/30
        }
    }
}
