import QtQuick 2.15
//import QtGraphicalEffects 1.0
import QtQuick.Controls 2.15
//import QtQuick.Controls.Styles 1.1




Rectangle{
    anchors{
        right: parent.right
        bottom: parent.bottom
        left: parent.left
    }
    height: parent.height/2
    color: Qt.lighter(appParams.app_Color, 1.5)
//    Calendar {
//        id: calendar
//        anchors.fill: parent
//        frameVisible: true
//        weekNumbersVisible: true
//        // selectedDate: new Date (2014, 0, 1)
//        focus: true

//        Component{
//            id: delegateStyle
//            Rectangle {
//                gradient: Gradient {
//                    GradientStop {
//                        position: 0.00
//                        color: styleData.selected ? "#111" : (styleData.visibleMonth && styleData.valid ? "#444" : "#666");
//                    }
//                    GradientStop {
//                        position: 1.00
//                        color: styleData.selected ? "#444" : (styleData.visibleMonth && styleData.valid ? "#111" : "#666");
//                    }
//                    GradientStop {
//                        position: 1.00
//                        color: styleData.selected ? "#777" : (styleData.visibleMonth && styleData.valid ? "#111" : "#666");
//                    }
//                }

//                Label {
//                    text: styleData.date.getDate()
//                    anchors.centerIn: parent
//                    color: styleData.valid ? "white" : "grey"
//                }

//                Rectangle {
//                    width: parent.width
//                    height: 1
//                    color: "#555"
//                    anchors.bottom: parent.bottom
//                }

//                Rectangle {
//                    width: 1
//                    height: parent.height
//                    color: "#555"
//                    anchors.right: parent.right
//                }
//            }
//        }

//        style: CalendarStyle {
//            gridVisible: false
////            dayDelegate: Loader{
////                sourceComponent: delegateStyle
////            }

//            background: Rectangle{
//                color: Qt.lighter(appParams.app_Color, 1.8)
//            }

//            weekNumberDelegate: Rectangle{
//                color: Qt.lighter(appParams.app_Color, 1.8)
//            }
//        }
//    }
}
