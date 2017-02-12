import QtQuick 2.7
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.0

Pane {
    id: installSucceedPane
    objectName: "installSucceedPane"
    width: 600
    height: 400
    Material.theme: Material.Dark
    Material.accent: Material.BlueGrey
    
    Label {
        id: logoLabel
        text: qsTr("SERVANT")
        anchors.verticalCenterOffset: -100
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pointSize: 32
        horizontalAlignment: Text.AlignHCenter
        font.family: "Microsoft JhengHei UI"
        
        Label {
            id: installSucceedLabel
            text: qsTr("安裝已完成")
            font.pointSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 85
            font.family: "Microsoft JhengHei UI"
        }
    }
    
    Button {
        id: startButton
        y: 42
        width: 200
        height: 60
        text: qsTr("立刻啟動")
        anchors.left: parent.left
        anchors.leftMargin: 30
        font.pointSize: 24
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        font.family: "Microsoft JhengHei UI"
        onClicked: mainWindow.runProgram()
    }
    
    Button {
        id: closeButton
        width: 200
        height: 60
        text: qsTr("關閉")
        anchors.right: parent.right
        anchors.rightMargin: 30
        font.pointSize: 24
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        font.family: "Microsoft JhengHei UI"
        onClicked: mainWindow.exitSetup()
    }
    
}
