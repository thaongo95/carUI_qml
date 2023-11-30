import QtQuick 2.15

Item{
    anchors{
        top: parent.top
        bottom: parent.bottom
        right: parent.right
        margins: parent.height/30
    }
    width: parent.width/5

    WeatherDisplay{

    }
    CustomCalendar{

    }
}





