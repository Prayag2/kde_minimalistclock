import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: root
    height: mainRow.implicitHeight
    property string fontFamily;

    function getFontsModel() {
        var arr = Qt.fontFamilies()
        arr.splice(0, 0, "Default")
        return arr
    }

    Timer {
        id: timer
        interval: 10
        running: false
        onTriggered: root.fontFamily=combo.currentText
    }
    // ComboBox
    RowLayout {
        id: mainRow
        Label {
            text: i18n("Font")
        }
        ComboBox {
            id: combo
            model: getFontsModel()
            onCurrentIndexChanged: timer.running=true
        }
    } 
}
