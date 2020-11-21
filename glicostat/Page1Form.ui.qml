import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    property alias questionVisible: control
    property bool showLabels: true
    property alias coffeeLabel: control.text

    width: 600
    height: 400
    title: qsTr("Alimente")
  Label {
      text: qsTr("Introduceti alimentul pentru a afla cate calorii are.")
      anchors.verticalCenterOffset: -103
      anchors.horizontalCenterOffset: -123
      anchors.centerIn: parent

        }

    Label {
        TextField {
            x: -188
            y: 8
            placeholderText: qsTr("Introduceti alimentul:")
        }
        anchors.centerIn: parent
        Button {
             id: control
             x: 61
             y: 8
             text: qsTr("Search")

             contentItem: Text {
                 font: control.font
                 opacity: enabled ? 1.0 : 0.3
                 color: control.down ? "#00778c" : "#16116b"
                 text: "Search"
                 horizontalAlignment: Text.AlignHCenter
                 verticalAlignment: Text.AlignVCenter
                 elide: Text.ElideRight
             }

             background: Rectangle {
                 implicitWidth: 100
                 implicitHeight: 40
                 opacity: enabled ? 1 : 0.3
                 border.color: control.down ? "#17a81a" : "#21be2b"
                 border.width: 1
                 radius: 2

             }


         }






}}
