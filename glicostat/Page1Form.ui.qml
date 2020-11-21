import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    width: 600
    height: 400

    title: qsTr("Alimente")

    Label {
        TextField {
            x: -151
            y: 22
            placeholderText: qsTr("Introduceti alimentul:")
         }
        anchors.centerIn: parent
    }
}
