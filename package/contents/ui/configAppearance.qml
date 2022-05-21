import QtQuick 2.0
import QtQml 2.0
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.1
import QtQuick.Layouts 1.15

ColumnLayout {

    // frame
    property alias cfg_enable_shadows: enableShadows.checked
    property alias cfg_frame_padding: framePadding.value
    property alias cfg_frame_border_width: frameBorderWidth.value

    // time
    property alias cfg_time_font_family: timeFontFamily.fontFamily
    property alias cfg_time_letter_spacing: timeLetterSpacing.value
    property alias cfg_time_word_spacing: timeWordSpacing.value
    property alias cfg_time_font_size: timeFontSize.value

    // date
    property alias cfg_date_font_family: dateFontFamily.fontFamily
    property alias cfg_date_letter_spacing: dateLetterSpacing.value
    property alias cfg_date_spacing: dateSpacing.value
    property alias cfg_date_font_size: dateFontSize.value

    spacing: 5
    
    Title {
        text: i18n("Box Settings")
    }
    RowLayout {
        CheckBox {
            id: enableShadows
        }
        Label {
            text: i18n("Enable shadow")
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    enableShadows.checked = !enableShadows.checked
                }
            }
        }
    }

    RowLayout {
        Label {
            text: i18n("Box spacing")
        }
        SpinBox {
            id: framePadding
            from: 0; to: 999
        }
    }
    RowLayout {
        Label {
            text: i18n("Border Width")
        }
        SpinBox {
            id: frameBorderWidth
        }
    }

    Title {
        text: i18n("Time Settings")
    }
    RowLayout {
        FontSelector {
            id: timeFontFamily
        } 
    }
    RowLayout {
        Label {
            text: i18n("Font Size")
        }
        SpinBox {
            id: timeFontSize
            from: 1; to: 999
        }
    }
    RowLayout {
        Label {
            text: i18n("Letter Spacing")
        }
        SpinBox {
            id: timeLetterSpacing
            from: 1; to: 999
        }
    }
    RowLayout {
        Label {
            text: i18n("Word Spacing")
        }
        SpinBox {
            id: timeWordSpacing
            from: 1; to: 999
        }
    }
    Title {
        text: i18n("Date Settings")
    }
    RowLayout {
        FontSelector {
            id: dateFontFamily
        } 
    }
    RowLayout {
        Label {
            text: i18n("Font Size")
        }
        SpinBox {
            id: dateFontSize
            from: 1; to: 999
        }
    }
    RowLayout {
        Label {
            text: i18n("Letter Spacing")
        }
        SpinBox {
            id: dateLetterSpacing
            from: 1; to: 999
        }
    }
    RowLayout {
        Label {
            text: i18n("Day and Date Spacing")
        }
        SpinBox {
            id: dateSpacing
            from: 1; to: 999
        }
    }

    Item {
        Layout.fillHeight: true
    }
}
