import QtQuick 2.7
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.0

Pane {
    id: ifNoVBoxPane
    objectName: "ifNoVBoxPane"
    width: 600
    height: 120
    Material.theme: Material.Dark
    Material.accent: Material.BlueGrey

    Label {
        id: downloadVBoxLabel2
        x: 39
        y: 326
        text: qsTr("網路連線可能會暫時中斷，建議您先暫停下載/串流以免造成資料損失。")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 25
        font.pointSize: 12
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        font.family: "Microsoft JhengHei UI"
    }

    Label {
        id: downloadVBoxLabel1
        x: 50
        y: 302
        text: qsTr("因此安裝過程中會自動安裝安裝程式隨附的Oracle VirtualBox。")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        font.pointSize: 12
        anchors.horizontalCenterOffset: -7
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        font.family: "Microsoft JhengHei UI"
    }

    Label {
        id: downloadVBoxLabel
        x: 109
        y: 276
        text: qsTr("本程式需要使用 Oracle VirtualBox 才能正常運作。")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 75
        font.pointSize: 12
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        font.family: "Microsoft JhengHei UI"
    }
}
