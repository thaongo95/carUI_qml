import QtQuick 2.15

Rectangle {
    id: movieDisplayView
    color: "transparent"
    Component{
        id: videoPoster
        Rectangle{
            width: videoListView.cellWidth
            height: videoListView.cellHeight
            color: "transparent"
            Rectangle{
                id: poster
                anchors{
                    top: parent.top
                    bottom: parent.bottom
                    left: parent.left
                    right: parent.horizontalCenter
                    margins: parent.height/10
                }
                Image{
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectCrop
                    source: posterSource
                }
            }
            Rectangle{
                id: info
                anchors{
                    verticalCenter: poster.verticalCenter
                    right: parent.right
                    left: poster.right
                    leftMargin: -poster.width/6
                }
                height: poster.height*2/3
                color: Qt.darker(appParams.app_Color, 1.5)
                radius: height/5
                Rectangle{
                    id: timeArea
                    anchors{
                        top: parent.top
                        bottom: parent.bottom
                        right: parent.right
                    }
                    width: parent.width/5
                    color: "transparent"
                    Text{
                        anchors{
                            top: parent.top
                            topMargin: parent.height/6
                            horizontalCenter: parent.horizontalCenter
                        }
                        text: duringTime
                        font.pixelSize: 14
                        color: Qt.lighter(appParams.app_Color, 1.8)
                    }
                    Image{
                        anchors{
                            bottom: parent.bottom
                            bottomMargin: parent.height/6
                            horizontalCenter: parent.horizontalCenter
                        }
                        width: parent.width/2
                        height: width

                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/ui/assets/play-button.png"

                    }
                }
                Rectangle{
                    id: infoArea
                    anchors{
                        top: parent.top
                        bottom: parent.bottom
                        left: parent.left
                        right: timeArea.left
                    }
                    color: "transparent"
                    Column{
                        anchors.fill: parent
                        padding: 5
                        spacing: 5
                        clip: true
                        Text{
                            id: nameOfMovie
                            text: movieName
                            font.pixelSize: 16
                            color: Qt.lighter(appParams.app_Color, 1.8)
                        }
                        Text{
                            id: nameOfYear
                            text: publishYear
                            font.pixelSize: 14
                            color: Qt.lighter(appParams.app_Color, 1.5)
                        }
                        Row{
                            spacing: 5
                            Repeater{
                                model: 5
                                Image{
                                    height: nameOfYear.implicitHeight
                                    width: height
                                    source: "qrc:/ui/assets/star.png"
                                    fillMode: Image.PreserveAspectFit
                                }
                            }
                            Text{
                                text: movieScore
                                font.pixelSize: nameOfYear.font.pixelSize
                                color: "yellow"
                            }
                        }
                    }
                }


            }
        }
    }
    ListModel{
        id: videoInfo
        ListElement{
            movieName: "12 Angry Men"
            publishYear: "1957"
            movieScore: "9.0"
            posterSource: "qrc:/ui/assets/movies/12 Angry Men H.png"
            duringTime: "1h 36m"
        }
        ListElement{
            movieName: "City of God"
            publishYear: "2002"
            movieScore: "8.6"
            posterSource: "qrc:/ui/assets/movies/City of God H.png"
            duringTime: "2h 10m"

        }
        ListElement{
            movieName: "Fight Club"
            publishYear: "1999"
            movieScore: "9.8"
            posterSource: "qrc:/ui/assets/movies/Fight Club H.png"
            duringTime: "2h 19m"

        }
        ListElement{
            movieName: "Forrest Gump"
            publishYear: "1994"
            movieScore: "8.8"
            posterSource: "qrc:/ui/assets/movies/Forrest Gump H.png"
            duringTime: "2h 22m"

        }
        ListElement{
            movieName: "Goodfellas"
            publishYear: "1990"
            movieScore: "8.7"
            posterSource: "qrc:/ui/assets/movies/Goodfellas H.png"
            duringTime: "2h 25m"
        }
        ListElement{
            movieName: "Inception"
            publishYear: "2010"
            movieScore: "8.8"
            posterSource: "qrc:/ui/assets/movies/Inception H.png"
            duringTime: "2h 28m"
        }
        ListElement{
            movieName: "Insterstellar"
            publishYear: "2014"
            movieScore: "8.7"
            posterSource: "qrc:/ui/assets/movies/Insterstellar H.png"
            duringTime: "2h 49m"
        }
        ListElement{
            movieName: "Life Is Beautiful"
            publishYear: "1997"
            movieScore: "8.6"
            posterSource: "qrc:/ui/assets/movies/Life Is Beautiful H.png"
            duringTime: "1h 56m"
        }
        ListElement{
            movieName: "Parasite"
            publishYear: "2019"
            movieScore: "8.5"
            posterSource: "qrc:/ui/assets/movies/Parasite H.png"
            duringTime: "2h 12m"
        }
        ListElement{
            movieName: "Pulp Fiction"
            publishYear: "1994"
            movieScore: "8.9"
            posterSource: "qrc:/ui/assets/movies/Pulp Fiction H.png"
            duringTime: "2h 34m"
        }
        ListElement{
            movieName: "Saving Private Ryan"
            publishYear: "1998"
            movieScore: "8.6"
            posterSource: "qrc:/ui/assets/movies/Saving Private Ryan H.png"
            duringTime: "2h 49m"
        }
        ListElement{
            movieName: "Schindlder's List"
            publishYear: "1993"
            movieScore: "9.0"
            posterSource: "qrc:/ui/assets/movies/Schindlder's List H.png"
            duringTime: "3h 15m"
        }
        ListElement{
            movieName: "Se7en"
            publishYear: "1995"
            movieScore: "8.6"
            posterSource: "qrc:/ui/assets/movies/Se7en H.png"
            duringTime: "2h 7m"
        }
        ListElement{
            movieName: "Spider-Man Across the Spider-Verse"
            publishYear: "2023"
            movieScore: "8.7"
            posterSource: "qrc:/ui/assets/movies/Spider-Man Across the Spider-Verse H.png"
            duringTime: "2h 20m"
        }
        ListElement{
            movieName: "Spirited Away"
            publishYear: "2001"
            movieScore: "8.6"
            posterSource: "qrc:/ui/assets/movies/Spirited Away H.png"
            duringTime: "2h 5m"
        }
        ListElement{
            movieName: "The Dark Night"
            publishYear: "2008"
            movieScore: "9.0"
            posterSource: "qrc:/ui/assets/movies/The Dark Night H.png"
            duringTime: "2h 32m"
        }
        ListElement{
            movieName: "The Godfather"
            publishYear: "1972"
            movieScore: "9.2"
            posterSource: "qrc:/ui/assets/movies/The Godfather H.png"
            duringTime: "2h 55m"
        }
        ListElement{
            movieName: "The Godfather Part II"
            publishYear: "1974"
            movieScore: "9.0"
            posterSource: "qrc:/ui/assets/movies/The Godfather Part II H.png"
            duringTime: "3h 22m"
        }
        ListElement{
            movieName: "The Good, the Bad and the Ugly"
            publishYear: "2001"
            movieScore: "8.8"
            posterSource: "qrc:/ui/assets/movies/The Good, the Bad and the Ugly H.png"
            duringTime: "2h 58m"
        }
        ListElement{
            movieName: "The Matrix"
            publishYear: "1998"
            movieScore: "8.7"
            posterSource: "qrc:/ui/assets/movies/The Matrix H.png"
            duringTime: "2h 16m"
        }
        ListElement{
            movieName: "The Pianist"
            publishYear: "2002"
            movieScore: "8.5"
            posterSource: "qrc:/ui/assets/movies/The Pianist H.png"
            duringTime: "2h 30m"
        }
        ListElement{
            movieName: "The Shawshank Redemption"
            publishYear: "1994"
            movieScore: "9.3"
            posterSource: "qrc:/ui/assets/movies/The Shawshank Redemption H.png"
            duringTime: "2h 22m"
        }
    }
    GridView{
        anchors.fill: parent
        id: videoListView
        model: videoInfo
        delegate: videoPoster
        cellHeight: parent.height/4
        cellWidth: parent.width/2
        clip: true
    }
}
