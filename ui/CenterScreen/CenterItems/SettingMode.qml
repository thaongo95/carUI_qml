import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    color: "transparent"
    Rectangle{
        id: colorchooseBt
        anchors{
            right: parent.horizontalCenter
            rightMargin: parent.height/15
            top: parent.top
            topMargin: parent.width/10
        }
        height: parent.height/20
        width: parent.width/10
        color: Qt.darker(appParams.app_Color, 1.5)
        Text{
            text: "Chọn màu"
            anchors.centerIn: parent
            font.pixelSize: 12
            color: Qt.lighter(appParams.app_Color, 1.5)
        }
        MouseArea{
            anchors.fill: parent
            onClicked: appParams.setAppColor(colorInput.colorApp)
        }
    }
    Rectangle{
        id: chooseBt
        width: colorchooseBt.width
        height: colorchooseBt.height
        anchors{
            left: parent.horizontalCenter
            leftMargin: parent.height/15
            top: parent.top
            topMargin: parent.width/10
        }
        Text{
            text: appParams.app_Color
            anchors.centerIn: parent
            font.pixelSize: 12
            color: Qt.lighter(appParams.app_Color, 1.5)
        }
        color: Qt.darker(appParams.app_Color, 1.5)
//        border.color: Qt.darker(appParams.app_Color, 1.5)
//        border.width: colorchooseBt.width/10
        MouseArea{
            anchors.fill: parent
            onClicked: colorPopup.open()
        }
    }
    Popup{
        id: colorPopup
        x: chooseBt.x+chooseBt.width
        y: chooseBt.y-colorchooseBt.height*5
        width: colorchooseBt.width*4.5
        height: colorchooseBt.height*10
        ListModel{
            id: colorList
            ListElement{
                colorName: "#cd853f"
            }
            ListElement{
                colorName: "#00ffff"
            }
            ListElement{
                colorName: "#8a2be2"
            }
            ListElement{
                colorName: "#a52a2a"
            }
            ListElement{
                colorName: "#deb887"
            }
            ListElement{
                colorName: "#5f9ea0"
            }
            ListElement{
                colorName: "#d2691e"
            }
            ListElement{
                colorName: "#ff7f50"
            }
            ListElement{
                colorName: "#6495ed"
            }
            ListElement{
                colorName: "#dc143c"
            }
            ListElement{
                colorName: "#00ffff"
            }
            ListElement{
                colorName: "#008b8b"
            }
            ListElement{
                colorName: "#b8860b"
            }
            ListElement{
                colorName: "#a9a9a9"
            }
            ListElement{
                colorName: "#8b008b"
            }
            ListElement{
                colorName: "#556b2f"
            }
            ListElement{
                colorName: "#e9967a"
            }
            ListElement{
                colorName: "#8fbc8f"
            }
            ListElement{
                colorName: "#483d8b"
            }
            ListElement{
                colorName: "#2f4f4f"
            }
            ListElement{
                colorName: "#00bfff"
            }
            ListElement{
                colorName: "#9400d3"
            }
            ListElement{
                colorName: "#696969"
            }
            ListElement{
                colorName: "#1e90ff"
            }
            ListElement{
                colorName: "#fffaf0"
            }
            ListElement{
                colorName: "#228b22"
            }
            ListElement{
                colorName: "#dcdcdc"
            }
            ListElement{
                colorName: "#daa520"
            }
            ListElement{
                colorName: "#adff2f"
            }
            ListElement{
                colorName: "#ff69b4"
            }
            ListElement{
                colorName: "#cd5c5c"
            }
            ListElement{
                colorName: "#4b0082"
            }
            ListElement{
                colorName: "#f08080"
            }
            ListElement{
                colorName: "#87cefa"
            }
            ListElement{
                colorName: "#ba55d3"
            }
            ListElement{
                colorName: "#db7093"
            }
        }
        Component{
            id: colorDelagate
            Rectangle{
                width: colorchooseBt.width*0.9
                height: colorchooseBt.height
                color: colorName

                MouseArea{
                    anchors.fill: parent
                    onClicked: appParams.setAppColor(color)
                }
            }
        }

        GridView{
            model: colorList
            anchors.fill: parent
            delegate: colorDelagate
            cellHeight: colorchooseBt.height
            cellWidth: colorchooseBt.width
        }
    }


}
