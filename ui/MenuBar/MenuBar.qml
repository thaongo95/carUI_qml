import QtQuick 2.15

Rectangle {
    anchors{
        left: parent.left
        right: parent.right
        top: parent.top
    }
    height: parent.height/15
    color: "#2f4f4f"
    MenuBarItem{
        id: backItem
        anchors{
            left: parent.left
            leftMargin: parent.height/2
        }
        iconSource: "qrc:/ui/assets/back.png"
    }
    MenuBarItem{
        id: bluetoothItem
        anchors{
            left: backItem.right
            leftMargin: parent.height/2
        }

        iconSource: "qrc:/ui/assets/bluetooth.png"
    }
    MenuBarItem{
        id: wifiItem
        anchors{
            left: bluetoothItem.right
            leftMargin: parent.height/2
        }

        iconSource: "qrc:/ui/assets/wifi.png"
    }
    MenuBarItem{
        id: volumeItem
        anchors{
            left: wifiItem.right
            leftMargin: parent.height/2
        }

        iconSource: "qrc:/ui/assets/volume.png"
    }

    // rightItems
    MenuBarItem{
        id: batteryItem
        anchors{
            right: parent.right
            rightMargin: parent.height/2
        }
        iconSource: "qrc:/ui/assets/battery-status.png"
    }
}
