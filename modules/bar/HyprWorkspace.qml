import "../../config.js" as Config
import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland

Rectangle {
  id: root

  implicitHeight: row.implicitHeight + 9
  implicitWidth: row.implicitWidth + 30
  radius: 10
  color: Config.colors.bg

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
        id: pill
        required property int index
        property bool changed: Hyprland.focusedWorkspace
        property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
        property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
        color: isActive ? Config.colors.fg : Config.colors.bg
        implicitWidth: isActive ? 40 : 30
        implicitHeight: 20
        radius: 10
        border {
          width: isActive ? 0 : 3
          color: ws ? Config.colors.grey : Config.colors.bgBlue
        }

        Behavior on implicitWidth {
          NumberAnimation {
            duration: 75
          }
        }

        property bool showText: false //does the workspace change or not

        //show the workspace number
        Connections {
          target: Hyprland
          function onFocusedWorkspaceChanged() {
            pill.showText = true;      // Make the number visible instantly
            hideTimer.restart();       // Start/reset the 1.5s countdown
          }
        }
        Timer {
          id: hideTimer
          interval: 1500
          repeat: false
          running: true
          triggeredOnStart: false
          onTriggered: {
            pill.showText = false;
          }
        }

        Text {
          id: wsNumber
          anchors.centerIn: parent
          color: pill.isActive ? Config.colors.bg : Config.colors.fg
          text: pill.isActive ? "<b>" + (pill.index + 1) + "</b>" : pill.index + 1
          font {
            family: Config.fonts.caskmononf
            pixelSize: parent.isActive ? 16 : 13
          }
          layer.enabled: true
          opacity: pill.showText ? 1 : 0
          Behavior on opacity {
            NumberAnimation {
              duration: 250
            }
          }
        }
      }
    }
  }
}
