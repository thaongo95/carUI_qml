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
    property variant textSources:[
"The RS Q8 is a performance version of the Q8 and was unveiled at the 2019 LA Auto Show in November.
The engine is shared with the RS 6 C8 and RS 7 4K8, a 4.0 TFSI engine rated 600 PS (441 kW; 592 hp)
and 800 N⋅m (590.0 lb⋅ft) of torque. Like the SQ8, performance is sent through the 8-speed Tiptronic
automatic gearbox (ZF 8HP90) to its Quattro all-wheel drive system. Audi claims 0–100 km/h (0–62 mph)
 in 3.8 seconds. The top speed is electronically limited to 250 km/h (155.3 mph) (305 km/h (189.5 mph)
 with dynamic package).",
"Standard luxuries include heated power front seats, dual digital displays, 64-color ambient lighting,
wireless charging, Blind Spot Assist and PRE-SAFE®. 2.0L inline-4 turbo engine with mild hybrid drive
Hybrid Integrated Starter-Generator 9G-TRONIC automatic transmission 4MATIC all-wheel drive 4-wheel
Electronic Traction System (4-ETS)",
"The Aventador was launched on 28 February 2011, at the Geneva Motor Show.Five months after its initial
 unveiling in Sant'Agata Bolognese, the vehicle,internally codenamed LB834, was designed to replace the
 then-decade-old Murciélago as the new flagship model.Soon after the Aventador's unveiling, Lamborghini
announced that it had sold 12 cars, with deliveries starting in the second half of 2011.By March 2016,
Lamborghini had built 5,000 Aventadors. It was the second best selling Lamborghini model alongside the
Gallardo and later the Huracan.",
"The Porsche 911 (pronounced Nine Eleven or in German: Neunelf) is a two-door 2+2 high performance rear
-engined sports car introduced in September 1964 by Porsche AG of Stuttgart, Germany. It has a rear
-mounted flat-six engine and originally a torsion bar suspension. The car has been continuously enhanced
through the years but the basic concept has remained unchanged.[1] The engines were air-cooled until the
introduction of the 996 series in 1998.",
"The Dodge Charger is a model of automobile marketed by Dodge in various forms over seven generations
since 1966. The first Charger was a show car in 1964. A 1965 Charger II concept car resembled the 1966
production version. The Charger has been built on three different platforms in various sizes. In the
United States, the Charger nameplate has been used on intermediate sized pony cars, muscle cars, and
personal luxury coupes, as well as on subcompact hatchbacks; and the current Charger is a full-size
four-door sedan. ",
"The RS Q8 is a performance version of the Q8 and was unveiled at the 2019 LA Auto Show in November.
The engine is shared with the RS 6 C8 and RS 74K8, a 4.0 TFSI engine rated 600 PS (441 kW; 592 hp)
and 800 N⋅m (590.0lb⋅ft) of torque. Like the SQ8, performance is sent through the 8-speed Tiptronic
automatic gearbox (ZF 8HP90) to its Quattro all-wheel drive system. Audi claims 0–100 km/h (0–62 mph)
 in 3.8 seconds. The top speed is electronically limited to 250 km/h (155.3 mph) (305 km/h (189.5 mph)
 with dynamic package).",
"The 2024 Audi RS5 is the max-performance version of Audi's stylish, luxury coupe, more muscular and
aggressive than its S5 and A5 siblings. Its specs fall short of the rival BMW M4 coupe's, but the RS5
still delivers an exciting driving experience with blistering acceleration, formidable handling, and
strong braking. At the same time, it's not too hardcore for daily driving. The nicely appointed interior
 has several sporty touches, and the rear seat is actually usable, despite the two-door configuration.
The RS5 is also available as a four-door Sportback",
"C 300 Sedan Specifications: heated power front seats, dual digital displays,64-color ambient lighting,
wireless charging, Blind Spot Assist and PRE-SAFE®.2.0L inline-4 turbo engine with mild hybrid drive
Hybrid Integrated Starter-Generator 9G-TRONIC automatic transmission 4MATIC all-wheel drive 4-wheel
Electronic Traction System (4-ETS)"

    ]
    property int index: 0
    Rectangle{
        color: "transparent"
        anchors{
            top: parent.top
            horizontalCenter: parent.horizontalCenter
            topMargin: parent.height/8

        }
        height: parent.height/3
        width: parent.width/2
        Text{
            text: textSources[index]
            anchors.centerIn: parent
            font.pixelSize: 12
            color: "white"

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
