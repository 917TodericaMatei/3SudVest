import QtQuick 2.15
import QtQuick.Controls 2.15
import QtMultimedia 5.15
Page {

        width: 600
        height: 400

    Button {
         id: control1
         x: 123
         y: 319
         width: 199
         height: 40
         text: qsTr("Camera scan")

         contentItem: Text {
             font: control1.font
             opacity: enabled ? 1.0 : 0.3
             color: control1.down ? "#a3000b" : "#000000"
             text: "Code scan"
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

    Button {
         id: control2
         x: 123
         y: 61
         width: 199
         height: 40
         text: qsTr("Camera scan")

         contentItem: Text {
             font: control2.font
             opacity: enabled ? 1.0 : 0.3
             color: control2.down ? "#a3000b" : "#000000"
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
             border.color: control2.down ? "#17a81a" : "#21be2b"
             border.width: 1
             radius: 2
         }
     }
    Label {
        TextField {
            x: 123
            y: 234
            placeholderText: qsTr("Introduceti codul:")
        }
    }


    Item {
        width: 640
        height: 360

        Camera {
            id: camera

            imageProcessing.whiteBalanceMode: CameraImageProcessing.WhiteBalanceFlash

            exposure {
                exposureCompensation: -1.0
                exposureMode: Camera.ExposurePortrait
            }

            flash.mode: Camera.FlashRedEyeReduction

            imageCapture {
                onImageCaptured: {
                    photoPreview.source = preview  // Show the preview in an Image
                }
            }
        }

        VideoOutput {
            source: camera
            anchors.fill: parent
            focus : visible // to receive focus and capture key events when visible
        }

        Image {
            id: photoPreview
        }
    }


}




