import QtQuick 2.15

Rectangle {
    id: gameSelectView
    color: "transparent"
    Component{
        id: gamePoster
        Rectangle{
            color: Qt.lighter(appParams.app_Color, 1.2)
            width: gamesView.cellWidth
            height: gamesView.cellHeight
            border.color: appParams.app_Color
            border.width: width/15
            Text{
                id: nameOfGame
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/6
                font.pixelSize: 16
                text: name
                color: Qt.darker(appParams.app_Color, 1.5)
                style: Text.Sunken
                styleColor: Qt.darker(appParams.app_Color, 2)
            }
            Image{
                anchors{
                    horizontalCenter: parent.horizontalCenter
                    top: parent.top
                    topMargin: parent.height/5
                }
                width: parent.width/2
                height: width

                fillMode: Image.PreserveAspectFit
                source: imgSource
            }
        }
    }
    ListModel{
        id: gameInfo
        ListElement{
            name: "Hungry Snake"
            imgSource: "qrc:/ui/assets/games/anaconda.png"
        }
        ListElement{
            name: "Captain Galaxy"
            imgSource: "qrc:/ui/assets/games/galaxy.png"
        }
        ListElement{
            name: "Shape Of Bricks"
            imgSource: "qrc:/ui/assets/games/wall.png"
        }
        ListElement{
            name: "Runners"
            imgSource: "qrc:/ui/assets/games/run.png"
        }
        ListElement{
            name: "Flappy Birds"
            imgSource: "qrc:/ui/assets/games/bird.png"
        }
        ListElement{
            name: "Candy Crushs"
            imgSource: "qrc:/ui/assets/games/candies.png"
        }
        ListElement{
            name: "Age of Empire"
            imgSource: "qrc:/ui/assets/games/roman-helmet.png"
        }
        ListElement{
            name: "Top Gunner"
            imgSource: "qrc:/ui/assets/games/handgun.png"
        }
    }

    GridView{
        id: gamesView
        model: gameInfo
        delegate: gamePoster
        anchors.fill: parent
        cellHeight: parent.height/2
        cellWidth: parent.width/4
    }
}
