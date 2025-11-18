import QtQuick

Item {
    id: root

    required property var lock

    Center {
        anchors.centerIn: parent
        lock: root.lock
    }
}
