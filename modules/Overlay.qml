import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Effects
import qs

PanelWindow {
  id: root

  color: "transparent"
  visible: true
  WlrLayershell.layer: WlrLayer.Top

  mask: Region {
    item: container
    intersection: Intersection.Xor
  }

  anchors {
    top: true
    left: true
    bottom: true
    right: true
  }

  Item {
    id: container
    anchors.fill: parent

    Rectangle {
      anchors.fill: parent
      color: Style.bg

      layer.enabled: true
      layer.effect: MultiEffect {
        maskSource: mask //qmllint disable
        maskEnabled: true
        maskInverted: true
        maskThresholdMin: 0.5
        maskSpreadAtMin: 1
      }
    }

    Item {
      id: mask
      anchors.fill: parent
      layer.enabled: true
      visible: false

      Rectangle {
        anchors.fill: parent
        anchors.margins: 5
        radius: 5
      }
    }
  }
}
