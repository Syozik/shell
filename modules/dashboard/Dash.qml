import qs.components
import qs.components.filedialog
import qs.services
import qs.config
import "dash"
import Quickshell
import QtQuick.Layouts

GridLayout {
    id: root

    required property PersistentProperties visibilities
    required property PersistentProperties state
    required property FileDialog facePicker

    rowSpacing: Appearance.spacing.normal
    columnSpacing: Appearance.spacing.normal

    Rect {
        Layout.row: 0
        Layout.column: 1
        Layout.columnSpan: 3
        Layout.fillWidth: true
        Layout.preferredWidth: calendar.implicitWidth
        Layout.preferredHeight: calendar.implicitHeight

        radius: Appearance.rounding.large

        Calendar {
            id: calendar
            state: root.state
        }
    }

    Rect {
        Layout.row: 0
        Layout.column: 4
        Layout.preferredWidth: media.implicitWidth
        Layout.preferredHeight: calendar.implicitHeight

        radius: Appearance.rounding.large * 2

        Media {
            id: media
        }
    }

    component Rect: StyledRect {
        color: Colours.tPalette.m3surfaceContainer
    }
}
