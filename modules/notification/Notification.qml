import "../../config.js" as Config
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

    implicitWidth: 270
    implicitHeight: Math.max(1, notifColumn.implicitHeight)

    // exclusionMode: ExclusionMode.Ignore

    ColumnLayout {
      id: notifColumn
      width: parent.width
      spacing: 10

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
          bottomLeftRadius: 10
          color: Config.colorsCat.Crust

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
                color: notifCapsule.modelData.urgency === NotificationUrgency.Critical ? Config.colorsCat.Red : Config.colorsCat.Text
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
                color: Config.colorsCat.Text
                wrapMode: Text.WordWrap
              }
            }
          }
        }
      }
    }
  }
}
