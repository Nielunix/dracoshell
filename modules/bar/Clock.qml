import "../../config.js" as Config
import QtQuick
import Quickshell

Rectangle {
  id: root

  implicitWidth: time.implicitWidth + 13
  implicitHeight: time.implicitHeight + 3
  radius: 10
  color: Config.colors.bg

  SystemClock {
    id: clock

    precision: SystemClock.Minutes
  }

  Text {
    id: time
    anchors.centerIn: parent
    text: Qt.formatDateTime(clock.date, "hh:mm")
    color: Config.colors.fg

    font {
      family: Config.fonts.caskmononf
      pixelSize: 20
      letterSpacing: 1
    }
  }
}
