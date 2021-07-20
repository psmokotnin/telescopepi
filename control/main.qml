import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.12

ApplicationWindow {
    id: window
    width: 480
    height: 320
    visible: true

    Material.theme: Material.Dark
    Material.accent: Material.Red

    property int fontSize: 60


    RowLayout {
        id: columnLayout
        anchors.fill: parent
        spacing: 1

        GridLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.fillWidth: true

            columns: 3
            rows: 3

            Item { Layout.fillHeight: true; Layout.fillWidth: true}
            Button {
                id: upButton
                text: "↑";
                Layout.fillHeight: true;
                Layout.fillWidth: true
                font.pixelSize: window.fontSize
                Material.foreground: Material.Red
                onClicked: telescope.goUp();
            }
            Item { Layout.fillHeight: true; Layout.fillWidth: true}

            Button {
                id: leftButton
                text: "←"
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pixelSize: window.fontSize
                Material.foreground: Material.Red
                onClicked: telescope.goLeft();
            }
            Item { Layout.fillHeight: true; Layout.fillWidth: true}
            Button {
                id: rightButton
                text: "→"
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pixelSize: window.fontSize
                Material.foreground: Material.Red
                onClicked: telescope.goRight();
            }


            Item { Layout.fillHeight: true; Layout.fillWidth: true}
            Button {
                id: downButton
                text: "↓"
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pixelSize: window.fontSize
                Material.foreground: Material.Red
                onClicked: telescope.goDown();
            }
            Item { Layout.fillHeight: true; Layout.fillWidth: true}
        }

        Slider {
            id: slider
            Layout.fillHeight: true
            orientation: Qt.Vertical
            from: 0
            to: 1

            value: telescope.speed
            onValueChanged: telescope.speed = value

        }
    }


}
