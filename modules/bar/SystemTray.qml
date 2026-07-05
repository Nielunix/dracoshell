import QtQuick
import QtQuick.Layouts
import Quickshell.Services.SystemTray
import "../../config.js" as Config

Rectangle {
  id: root
  color: Config.colorsCat.Base
  radius: 5
  height: 28
  implicitWidth: row.implicitWidth + 20

  RowLayout {
    id: row
    anchors.centerIn: parent
    Repeater {
      model: SystemTray.items

      Rectangle {
        implicitHeight: 16
        implicitWidth: 16
        color: "transparent"

        Image {
          source: modelData.icon //qmllint disable
          anchors.fill: parent
        }

        MouseArea {}
      }
    }
  }
}
