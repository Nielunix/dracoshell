import "../../config.js" as Config
import QtQuick
import Quickshell.Hyprland

Rectangle {
  id: root

  color: Config.colors.bg
  implicitHeight: window.implicitHeight + 5
  implicitWidth: window.implicitWidth + 13
  radius: 10

  Text {
    id: window
    anchors.centerIn: parent
    text: "<b>" + Hyprland.activeToplevel.title + "</b>"
    color: Config.colors.fg

    font {
      family: Config.fonts.caskcovenf
      pixelSize: 16
    }
  }
}
