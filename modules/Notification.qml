import qs
import Quickshell
import Quickshell.Io
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts
import Quickshell.Services.Notifications

Scope {
  NotificationServer {
    id: notServ
    bodySupported: true
    actionsSupported: true
    imageSupported: true
    onNotification: n => {
      n.tracked = true;
    }
  }

  // notification
  PanelWindow {
    id: notif
    anchors {
      top: true
      right: true
    }

    color: 'transparent'

    implicitWidth: 300
    implicitHeight: Math.max(1, notifColumn.implicitHeight)

    // exclusionMode: ExclusionMode.Ignore
    Rectangle {
      anchors.fill: parent
      color: Style.bg
      radius: 5
      
      ColumnLayout {
        id: notifColumn
        width: 285

        anchors.centerIn: parent
        anchors.bottomMargin: 100
        spacing: 5

        Repeater {
          model: notServ.trackedNotifications

          //notification capsule
          delegate: Rectangle {
            id: notifCapsule

            required property var modelData

            Timer {
              running: true
              interval: notifCapsule.modelData.urgency !== NotificationUrgency.Critical ? 5000 : 15000
              onTriggered: notifCapsule.modelData.dismiss()
            }

            Layout.fillWidth: true
            Layout.preferredHeight: content.implicitHeight + 20
            color: Style.bg

            RowLayout {
              id: content
              Layout.fillWidth: true
              spacing: 3
              anchors.fill: parent
              anchors.margins: 10

              Image {
                Layout.preferredHeight: 20
                Layout.preferredWidth: 20
                Layout.alignment: Qt.AlignTop
                fillMode: Image.PreserveAspectFit
                visible: source.toString() !== ""
                source: notifCapsule.modelData.image || notifCapsule.modelData.appIcon || ""
              }

              ColumnLayout {
                Layout.fillWidth: true
                spacing: 2

                Text {
                  id: nSummary
                  Layout.rightMargin: 5
                  Layout.leftMargin: 5
                  Layout.topMargin: 2
                  text: notifCapsule.modelData.summary
                  font {
                    family: Style.caskmononf
                    pixelSize: 14
                  }
                  color: notifCapsule.modelData.urgency === NotificationUrgency.Critical ? Style.red : Style.fg
                  elide: Text.ElideRight
                }

                Text {
                  id: nBody
                  Layout.fillWidth: parent.width
                  Layout.preferredWidth: 265
                  Layout.leftMargin: 5
                  Layout.rightMargin: 5
                  visible: text !== ""
                  text: notifCapsule.modelData.body
                  font {
                    family: Style.caskmononf
                    pixelSize: 13
                  }
                  color: Style.fg
                  wrapMode: Text.WordWrap
                }
              }
            }
          }
        }
      }
    }
  }
}
