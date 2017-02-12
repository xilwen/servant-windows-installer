import QtQuick 2.7
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.0

ApplicationWindow {
    visible: true
    width: 600
    height: 400
    title: qsTr("SERVANT Installer")

    AskToIntallPane {
        id: askToIntallPane
        z: 3
    }

    LoadingPane {
        id: loadingPane
        z: 2
        visible:false
    }

    InstallSucceed {
        id: installSucceed
        visible:false
    }

}
