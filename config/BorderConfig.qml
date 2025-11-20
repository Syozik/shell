import Quickshell.Io

JsonObject {
    property int thickness: 0
    property int rounding: Appearance.rounding.large

    readonly property int minThickness: 2
    readonly property int clampedThickness: Math.max(minThickness, thickness)
}
