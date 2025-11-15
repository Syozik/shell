pragma ComponentBehavior: Bound

import qs.components
import qs.services
import qs.config
import QtQuick

Item {
    id: root

    required property var visibilities
    property color colour: Colours.palette.m3tertiary

    implicitWidth: dateText.implicitHeight
    implicitHeight: dateText.implicitWidth + Appearance.spacing.normal

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor

        onClicked: root.visibilities.dashboard = !root.visibilities.dashboard
    }

    StyledText {
        id: dateText

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: -40

        text: Qt.formatDate(new Date(), "MMM dd")
        font.pointSize: Appearance.font.size.normal
        font.family: Appearance.font.family.mono
        color: root.colour

        transform: Rotation {
            angle: -90
            origin.x: dateText.implicitHeight / 2
            origin.y: dateText.implicitHeight / 2
        }

        width: implicitHeight
        height: implicitWidth
    }

    Timer {
        interval: 60000 // Update every minute
        running: true
        repeat: true
        onTriggered: dateText.text = Qt.formatDate(new Date(), "MMM dd")
    }
}
