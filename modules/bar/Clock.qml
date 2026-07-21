import QtQuick
import Quickshell
import qs

Rectangle {
  id: root

  implicitWidth: time.implicitWidth + 13
  implicitHeight: time.implicitHeight + 3
  radius: 5
  color: Style.bg

  SystemClock {
    id: clock

    precision: SystemClock.Minutes
  }

  Text {
    id: time
    anchors.centerIn: parent
    text: Qt.formatDateTime(clock.date, "hh:mm")
    color: Style.red

    font {
      family: Style.caskmononf
      pixelSize: 20
      letterSpacing: 1
    }
  }
}
