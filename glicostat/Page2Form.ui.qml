import QtQuick 2.15
import QtQuick.Controls 2.15

Page {

        width: 600
        height: 400

    Button {
         id: control1
         x: 123
         y: 163
         width: 199
         height: 40
         text: qsTr("Camera scan")

         contentItem: Text {
             font: control1.font
             opacity: enabled ? 1.0 : 0.3
             color: control1.down ? "#a3000b" : "#000000"
             text: "Camera scan"
             horizontalAlignment: Text.AlignHCenter
             verticalAlignment: Text.AlignVCenter
             elide: Text.ElideRight
         }

         background: Rectangle {
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "lightsteelblue" }
                    GradientStop { position: 1.0; color: "blue" }
                }
             implicitWidth: 100
             implicitHeight: 40
             opacity: enabled ? 1 : 0.3
             border.color: control1.down ? "#17a81a" : "#21be2b"
             border.width: 1
             radius: 2
         }
     }
    }

