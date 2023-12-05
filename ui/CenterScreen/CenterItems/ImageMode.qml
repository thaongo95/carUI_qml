import QtQuick 2.15

Rectangle {
    id: home
    color: "transparent"
    property variant imageSources: ["qrc:/ui/assets/cars/car-9276.png",
                                    "qrc:/ui/assets/cars/car-9292.png",
                                    "qrc:/ui/assets/cars/car-9296.png",
                                    "qrc:/ui/assets/cars/car-9307.png",
                                    "qrc:/ui/assets/cars/car-9312.png",
                                    "qrc:/ui/assets/cars/car-9314.png",
                                    "qrc:/ui/assets/cars/car-9315.png",
                                    "qrc:/ui/assets/cars/mercedes-26183.png"
    ]
    property int index: 0
    property variant distanceRange:["433-473", "334-355", "380-430", "400-450", "430-460", "425-475", "357-450", "450-480"]
    property variant speedUpTime: [8.9, 7.8, 7.9, 6.7, 7.6, 7.4, 8.7, 9.3]
    property variant chargingTime: [6.7, 5.6, 5.8, 6.5, 6.3, 7.4, 8.2, 4.5]
    property variant spaceNum: [5, 5, 2, 2, 5, 5, 2, 2]
    property variant nameCar: ["Audi Q8", "Mercedes-Benz GLC300", "Lamboghini Aventador", "Mustang F-Type", "Dodge LS", "Audi Q7", "Audi RS-200", "Mercedes c300"]
    property color textColor: Qt.lighter(appParams.app_Color, 2.0)
    Rectangle{
        color: "transparent"
        anchors{
            top: parent.top
            horizontalCenter: parent.horizontalCenter
            topMargin: parent.height/8
        }
        height: parent.height/3
        width: parent.width-parent.width/10
        Row{
            anchors.fill: parent
            anchors.bottomMargin: parent.width/6
            spacing: parent.width/8

            Column{
                spacing: 10
                Text{
                    text: "Tầm vận hành"
                    font.pixelSize: 14
                    color: textColor
                }
                Text{
                    text: distanceRange[index] + " km"
                    font.pixelSize: 24
                    color: textColor
                }
                Text{
                    text: "Quãng đường chạy hoàn toàn bằng điện"
                    font.pixelSize: 12
                    color: textColor
                }
            }
            Column{
                spacing: 10
                Text{
                    text: "Tăng tốc trong"
                    font.pixelSize: 14
                    color: textColor
                }
                Text{
                    text: speedUpTime[index] + " giây"
                    font.pixelSize: 24
                    color: textColor
                }
                Text{
                    text: "từ 0 - 100 km/h"
                    font.pixelSize: 12
                    color: textColor
                }
            }
            Column{
                spacing: 10
                Text{
                    text: "Thời gian sạc"
                    font.pixelSize: 14
                    color: textColor
                }
                Text{
                    text: chargingTime[index] + " giờ"
                    font.pixelSize: 24
                    color: textColor
                }
                Text{
                    text: "từ 0% - 100% AC (11kW)"
                    font.pixelSize: 12
                    color: textColor
                }
            }
            Column{
                spacing: 10
                Text{
                    text: "Không gian"
                    font.pixelSize: 14
                    color: textColor
                }
                Text{
                    text: spaceNum[index] + " chỗ"
                    font.pixelSize: 24
                    color: textColor
                }
                Text{
                    text: "Chỗ ngồi"
                    font.pixelSize: 12
                    color: textColor
                }
            }
        }
        Text{
            anchors{
                bottom: parent.bottom
                horizontalCenter: parent.horizontalCenter
            }
            text: nameCar[index]
            font.pixelSize: 28
            color: Qt.lighter(textColor, 1.5)
        }
    }
    Image{
        id: carImage
        anchors{
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: parent.height/6
        }
        height: parent.height/3
        width: parent.width/3
        fillMode: Image.PreserveAspectFit
        source: imageSources[index]
    }
    Image{
        anchors{
            left: carImage.right
            verticalCenter: carImage.verticalCenter
            leftMargin: carImage.height/4
        }
        height: carImage.height/4
        width: height
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/fast-forward.png"
        MouseArea{
            anchors.fill: parent
            onClicked:{
                index++
                appParams.setImgSource(imageSources[index])
                if (index>7){
                    index=7
                }
            }
        }
    }
    Image{
        anchors{
            right: carImage.left
            verticalCenter: carImage.verticalCenter
            rightMargin: carImage.height/4
        }
        rotation: 180
        height: carImage.height/4
        width: height
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/fast-forward.png"
        MouseArea{
            anchors.fill: parent
            onClicked:{
                index--
                appParams.setImgSource(imageSources[index])
                if (index<0){
                    index=0
                }
            }
        }
    }
}
