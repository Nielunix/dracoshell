import "../../config.js" as Config
import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland

Rectangle {
  id: root
  
  implicitHeight: 25
  implicitWidth: row.implicitWidth + 30
  radius: 5
  color: Config.colorsCat.Crust

  RowLayout {
    id: row
    anchors {
      leftMargin: 10
      rightMargin: 10
      fill: parent
    }
    spacing: 8
    
    Repeater {
      model: 5

      Rectangle {
        id: container
        required property int index
        property bool changed: Hyprland.focusedWorkspace
        property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
        property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
        Layout.alignment: Qt.AlignCenter
        width: 20
        height: parent.height
        color: "transparent"
        Text {
          anchors.top: parent.top
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.topMargin: 3
          color: container.isActive ? Config.colorsCat.Sapphire : (container.ws ? Config.colorsCat.Lavender : Config.colorsCat.Surface1)
          text: container.isActive ? "<b>" + (container.index + 1) + "</b>" : container.index + 1
          font {
            family: Config.fonts.caskmononf
            pixelSize: 16
          }
        }
        Rectangle {
          id: wsNumber
          width: container.width
          height: 2
          anchors.bottom: parent.bottom
          anchors.bottomMargin: 2
          color: container.isActive ? Config.colorsCat.Sapphire : Config.colorsCat.Base
        }
      }
    }
  }
}
