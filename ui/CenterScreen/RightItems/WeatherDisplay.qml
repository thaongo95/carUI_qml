import QtQuick 2.15
import QtQml 2.0
Rectangle{
    id: root_
    anchors{
        right: parent.right
        top: parent.top
        left: parent.left
    }
    height: parent.height/2.2
    color: Qt.lighter(appParams.app_Color, 1.8)

    function weatherChanging(expression){
        switch (expression){
        case 1:
            weatherImg.imgSource = "qrc:/ui/assets/weather/cloudywithrain.png";
            break;
        case 2:
            weatherImg.imgSource = "qrc:/ui/assets/weather/snow.png";
            break;
        case 3:
            weatherImg.imgSource = "qrc:/ui/assets/weather/cloud.png";
            break;
        case 4:
            weatherImg.imgSource = "qrc:/ui/assets/weather/raining.png";
            break;
        case 5:
            weatherImg.imgSource = "qrc:/ui/assets/weather/sun.png";
            break;
        case 6:
            weatherImg.imgSource = "qrc:/ui/assets/weather/cloudy.png";
            break;
        default:
            weatherImg.imgSource = "qrc:/ui/assets/weather/storm.png";
        }
    }
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
        property alias imgSource: weatherImg.source
        height: parent.height/3
        width: parent.width/3
        anchors{
            bottom: divider1.top
            right: parent.right
            margins: parent.width/10
        }
        fillMode: Image.PreserveAspectFit
//        source: "qrc:/ui/assets/weather/cloudywithrain.png"   // must be binding property to a function, if give it a value it become asignment and binding will stop
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
        id: dateArea
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
            id: dateText
            property alias content: dateText.text
            anchors.centerIn: parent
            font.pixelSize: 12
            color: Qt.darker(appParams.app_Color, 1.2)

        }
    }
    Rectangle{
        id: timeArea
        height: parent.height/8
        width: parent*2/3
        anchors{
            bottom: dateArea.top
            horizontalCenter: parent.horizontalCenter
            margins: parent.width/20
        }
        color:"transparent"
        Text {
            id: timeText
            property alias content: timeText.text
            anchors.centerIn: parent
            font.pixelSize: 34
            color: Qt.darker(appParams.app_Color, 1.2)

        }       
    }
    Timer{
        id: updateClock
        property int countForWeatherChange: 1
        interval: 1000
        repeat: true
        running: true
        triggeredOnStart: true
        onTriggered:{
            timeText.content = new Date().toLocaleTimeString(Qt.locale(), Locale.LongFormat);
            dateText.content = new Date().toLocaleDateString();
            if (updateClock.countForWeatherChange>7){
                updateClock.countForWeatherChange=1;
            }

            console.log(updateClock.countForWeatherChange);
            root_.weatherChanging(updateClock.countForWeatherChange);
            updateClock.countForWeatherChange++;
        }
    }


}
