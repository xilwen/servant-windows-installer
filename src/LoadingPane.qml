import QtQuick 2.7
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.0

Pane {
    id: loadingPane
    objectName: "loadingPane"
    width: 600
    height: 400
    z: 3
    Material.theme: Material.Dark
    Material.accent: Material.BlueGrey    

    Label {
        id: logoTitle
        x: 385
        y: 260
        text: qsTr("SERVANT")
        anchors.horizontalCenterOffset: 0
        anchors.verticalCenterOffset: -100
        font.family: "Microsoft JhengHei UI"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pointSize: 32
        horizontalAlignment: Text.AlignHCenter

        Label {
            id: logoSubTitelLabel
            x: 84
            width: 84
            height: 26
            text: qsTr("請稍候...")
            font.family: "Microsoft JhengHei UI"
            anchors.top: parent.top
            anchors.topMargin: 85
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter
        }
    }

    ProgressBar {
        id: loadProgressBar
        objectName: "loadProgressBar"
        x: 528
        y: 528
        width: 400
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        value: 0
        indeterminate: false

        Label {
            id: loadStatusLabel
            x: 176
            y: -36
            width: 47
            height: 20
            text: qsTr("Status")
            font.family: "Microsoft JhengHei UI"
            font.pointSize: 12
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -20
        }
    }

}
