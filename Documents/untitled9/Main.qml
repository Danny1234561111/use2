import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ColumnLayout")
    property int myMargin:10 // Устанавливаем отступы
    minimumWidth:cl.implicitWidth+2*myMargin // Минимальная ширина окна
    ColumnLayout{
        id:cl
        spacing: myMargin
        anchors.fill:parent // Иначе не увидим выравнивание
        Comp{
            tex: "Header"
            Layout.fillWidth: true
            Layout.minimumWidth:400
        }
        Item{
            Layout.fillHeight: true } // Подпираем снизу содержимое
        Comp{
            tex: ""
            Layout.fillWidth: true
            Layout.minimumWidth:400
            RowLayout{
                width: parent.width
                spacing:10
                Comp{
                    tex: "1"
                    Layout.fillWidth: true
                }
                Comp{
                    tex: "2"
                    Layout.fillWidth: true
                }
                Comp{
                    tex: "3"
                    Layout.fillWidth: true
                }
            }


        }
    }
}
