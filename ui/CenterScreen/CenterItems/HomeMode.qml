import QtQuick 2.15

Rectangle {
    id: root
    radius: width/6
    property int processValue: 0
    gradient: Gradient{
        GradientStop{position: 0;color: Qt.darker(appParams.app_Color, 1.2)}
        GradientStop{position: 1;color: "#2f4f4f"}
    }

    ////////////////////////////////////////////////////////////////////////////
    Rectangle{
        id: iconArea
        height: parent.height/10
        width: parent.width/2
        anchors{
            top: parent.top
            horizontalCenter: parent.horizontalCenter
        }
        color: "transparent"
        ListModel{
            id: iconList
            ListElement{
                sourceOn: "qrc:/ui/assets/homePage/car-lights.png"
                sourceOff: "qrc:/ui/assets/homePage/car-lights.png"
            }
            ListElement{
                sourceOn: "qrc:/ui/assets/homePage/low-beam-on.png"
                sourceOff: "qrc:/ui/assets/homePage/low-beam.png"
            }
            ListElement{
                sourceOn: "qrc:/ui/assets/homePage/ABS-on.png"
                sourceOff: "qrc:/ui/assets/homePage/ABS.png"
            }
            ListElement{
                sourceOn: "qrc:/ui/assets/homePage/parking-on.png"
                sourceOff: "qrc:/ui/assets/homePage/parking.png"
            }
            ListElement{
                sourceOn: "qrc:/ui/assets/homePage/stop-on.png"
                sourceOff: "qrc:/ui/assets/homePage/stop.png"
            }
            ListElement{
                sourceOn: "qrc:/ui/assets/homePage/seatbelt-on.png"
                sourceOff: "qrc:/ui/assets/homePage/seatbelt.png"
            }
        }

        Component{
            id: carIcon
            Image{
                anchors.verticalCenter: parent.verticalCenter
                width: iconArea.height/2
                height: width
                property bool onOffState: false
                source: onOffState ? sourceOn : sourceOff
                fillMode: Image.PreserveAspectFit
                MouseArea{
                    anchors.fill: parent
                    onClicked: onOffState=!onOffState
                }
            }
        }

        ListView{
            anchors.fill: parent
            model: iconList
            orientation: ListView.Horizontal
            delegate: carIcon
            spacing: parent.height*2/3
        }
    }
    //////////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////
    Image{
        id: fuel
        source: "qrc:/ui/assets/homePage/gas-station.png"
        fillMode: Image.PreserveAspectFit
        width: implicitWidth/4
        height: implicitHeight/4
        anchors{
            left: parent.left
            leftMargin: parent.height/6
            bottom: parent.bottom
            bottomMargin:  parent.height/8
        }
        Row{
            anchors{
                left: fuel.right
                leftMargin: 5
                verticalCenter: fuel.verticalCenter
            }
            spacing: 2
            Repeater{
                model: 10
                Rectangle{
                    width: fuel.width/4
                    height: fuel.height
                    color: "#00ffff"
                }
            }
        }
    }


    ///////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////////////////////////////////////////////////////
    Text{
        id: readyText
        text: "READY"
        color: "#1e90ff"
        font.pixelSize: 24
        anchors{
            right: parent.right
            rightMargin: parent.height/3
            bottom: parent.bottom
            bottomMargin: parent.height/8
        }
        Row{
            anchors{
                left: readyText.right
                leftMargin: readyText.height/2
                verticalCenter: readyText.verticalCenter
            }
            spacing: readyText.height/2
            Repeater{
                model: ["P", "R", "N", "D"]
                Text{
                    required property string modelData
                    text: modelData
                    font.pixelSize: 24
                    color: "#dcdcdc"
                    opacity: modelData==="R" ? 1 : 0.4
                }
            }
        }
    }

    /////////////////////////////////////////////////////////////////////////////////////////////

    /////////////////////////////////////////////////////////////////////////////////////////
    Image{
        id: road
        anchors{
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
        }
        height: parent.height/3
        width: implicitWidth*height/implicitHeight
        source: "qrc:/ui/assets/homePage/road.png"
        fillMode: Image.PreserveAspectFit
        Image{
            id: bigCar
            anchors{
                horizontalCenter: parent.horizontalCenter
                bottom: parent.bottom
                bottomMargin: parent.height/5
            }
            width: parent.width*2/3
            height: implicitHeight*width/implicitWidth
            source: "qrc:/ui/assets/homePage/White-Car-From_Behind.png"
            fillMode: Image.PreserveAspectFit
            MouseArea{
                id: mouseEvent
                anchors.fill: parent
            }
        }
        Image{
            id: smallCar
            anchors{
                horizontalCenter: parent.horizontalCenter
                bottom: bigCar.top
                bottomMargin: parent.height/10
            }
            width: bigCar.width/3
            height: implicitHeight*width/implicitWidth
            source: "qrc:/ui/assets/homePage/White-Car-From_Behind.png"
            fillMode: Image.PreserveAspectFit
        }
    }
    Timer{
        interval: 50
        running: mouseEvent.pressed
        repeat: true
        onTriggered: {
            if (root.processValue<100){
                root.processValue++;
                progressCanvas.requestPaint();

            }
            console.log(root.processValue);
        }
    }
    Timer{
        interval: 50
        running: (root.processValue!=0)&&(!mouseEvent.pressed)
        repeat: true
        onTriggered: {
            if (root.processValue>0){
                root.processValue--;
                progressCanvas.requestPaint();
            }
            console.log(root.processValue);
        }
    }
    /////////////////////////////////////////////////////////////////////////////////

    /////////////////////////////////////////////////////////////////////////////////
    Image{
        id: speedometer
        anchors{
            bottom: road.top
            horizontalCenter: road.horizontalCenter
        }
        width: road.width*1.2
        height: implicitHeight*width/implicitWidth
        source: "qrc:/ui/assets/homePage/speedometer-png.png"
        fillMode: Image.PreserveAspectFit
        property real centerX: speedometer.width/2
        property real centerY: speedometer.height*2/3
        property real radiusD: speedometer.width/2-speedometer.width/9
        property int itemCount: 24
        Component.onCompleted: {
            var text = 160;
            for (var i = 0; i < speedometer.itemCount; ++i) {
                if (i<10&&i>2) continue;
                var angle = (360 / speedometer.itemCount) * i;
                var x = speedometer.centerX + speedometer.radiusD * Math.cos(angle * Math.PI / 180);
                var y = speedometer.centerY + speedometer.radiusD * Math.sin(angle * Math.PI / 180);
                if (text===190) text=0;
                var textItem = Qt.createQmlObject('
                    import QtQuick 2.15
                    Text {
                        text: "'+ text+ '"
                        font.pixelSize: 12
                        color: "#ff69b4"
                        x: ' +x +'-implicitWidth/2
                        y: ' +y +'-implicitHeight/2
                    }'
                    , speedometer);
                text+=10;
//                textItem.x = x-textItem.implicitWidth/2;
//                textItem.y = y-textItem.implicitHeight/2;
            }
        }
        Text{
            id: textKmh
            x: speedometer.centerX-implicitWidth/2
            y: speedometer.centerY-implicitHeight
            color: root.processValue<63 ? "#00ced1" : "red"    //"#dc143c"
            text: parseInt(processValue/100*160)
            font.pixelSize: 48
        }
        Text{
            x: speedometer.centerX-implicitWidth/2
            y: speedometer.centerY+2
            color: root.processValue<63 ? "#00ced1" : "#dc143c"
            text: "km/h"
            font.pixelSize: 20
        }
    }
    Rectangle{
        id: processArea
        color: "transparent"
        anchors{
            horizontalCenter: speedometer.horizontalCenter
            verticalCenter: speedometer.verticalCenter
        }
        width: speedometer.width*2
        height: speedometer.height*2

        Canvas {
            id: progressCanvas
            anchors.fill: parent
            property real processVal: root.processValue/100
            onPaint: {
                var ctx = getContext("2d");
                var centerX = width / 2;
                var centerY = height*7/12;
                var radius = Math.min(width, height) /5 *2; // Adjust as needed

                // Background circle
                ctx.strokeStyle = "#2f4f4f";
                ctx.lineWidth = 45;
                var startPoint = 5*Math.PI / 6; // Start from top
                var endPoint = startPoint + ((2 * Math.PI) * 2/3)
                ctx.beginPath();
                ctx.arc(centerX, centerY, radius, startPoint, endPoint);
                ctx.stroke();

                // Progress arc

                ctx.strokeStyle = root.processValue<63 ? "#00ced1" : "#dc143c";
                ctx.lineWidth = 45;
                var startAngle = 5*Math.PI / 6; // Start from top
                var endAngle = startAngle + ((processVal) * (2 * Math.PI) * 2/3); // Progress value (0 to 1)
                ctx.beginPath();
                ctx.arc(centerX, centerY, radius, startAngle, endAngle);
                ctx.stroke();
            }
        }
    }
}
