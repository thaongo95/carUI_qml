import QtQuick 2.15
import QtQml 2.0
Rectangle{
    anchors{
        right: parent.right
        top: parent.top
        left: parent.left
    }
    height: parent.height/2.2
    color: Qt.lighter(appParams.app_Color, 1.8)
    Rectangle{
        id: divider1
        height: 2
        width: parent.width*4/5
        radius: width/2
        color: Qt.lighter(appParams.app_Color, 2.8)
        anchors{
            bottom: parent.bottom
            bottomMargin: parent.height/20
            horizontalCenter: parent.horizontalCenter
        }
    }
    Image{
        id: weatherImg
        height: parent.height/3
        width: parent.width/3
        anchors{
            bottom: divider1.top
            right: parent.right
            margins: parent.width/10
        }
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/weather/cloudywithrain.png"
    }
    Rectangle{
        id: temperture
        height: parent.height/3
        width: parent.width/3
        anchors{
            bottom: divider1.top
            left: parent.left
            margins: parent.width/10
        }
        color:"transparent"
        Text {
            anchors.centerIn: parent
            text: virtualParams.tempertureValue + " độ"
            font.pixelSize: 32
            color: Qt.darker(appParams.app_Color, 1.2)

        }
    }
    Rectangle{
        id: divider2
        height: 2
        width: parent.width*4/5
        radius: width/2
        color: Qt.lighter(appParams.app_Color, 2.8)
        anchors{
            bottom: temperture.top
            bottomMargin: parent.height/20
            horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle{
        id: date
        property date currentDate: new Date()
        height: parent.height/8
        width: parent*2/3
        anchors{
            bottom: divider2.top
            horizontalCenter: parent.horizontalCenter
            margins: parent.width/20
        }
        color:"transparent"
        Text {
            anchors.centerIn: parent
            text: new Date().toLocaleDateString()
            font.pixelSize: 12
            color: Qt.darker(appParams.app_Color, 1.2)

        }
    }
    Rectangle{
        id: time
        property date currentDate: new Date()
        height: parent.height/8
        width: parent*2/3
        anchors{
            bottom: date.top
            horizontalCenter: parent.horizontalCenter
            margins: parent.width/20
        }
        color:"transparent"
        Text {
            anchors.centerIn: parent
            text: new Date().toLocaleTimeString(Qt.locale("de_DE"))
            font.pixelSize: 28
            color: Qt.darker(appParams.app_Color, 1.2)

        }
    }


}
