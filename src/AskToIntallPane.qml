import QtQuick 2.7
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.0

Pane {
    id: askToInstallPane
    objectName: "askToInstallPane"
    width: 600
    height: 400
    padding: 0
    bottomPadding: 0
    Material.theme: Material.Dark
    Material.accent: Material.BlueGrey

    Label {
        id: logoLabel
        x: -19
        y: -67
        text: qsTr("SERVANT")
        anchors.verticalCenterOffset: -100
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 32
        horizontalAlignment: Text.AlignHCenter
        font.family: "Microsoft JhengHei UI"
    }

    Button {
        id: acceptAndInstallButton
        y: 165
        width: 200
        height: 60
        text: qsTr("接受並安裝")
        font.pointSize: 24
        anchors.horizontalCenterOffset: 3
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 120
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: "Microsoft JhengHei UI"
        onClicked: mainWindow.startInstallation()

        Label {
            id: readContractLabel
            text: qsTr("您需要同意 GPL 授權合約。")
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: -20
            horizontalAlignment: Text.AlignHCenter
            font.family: "Microsoft JhengHei UI"
        }
    }

    IfNoVBoxPane {
        id: ifNoVBoxPane
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter

    }

}
