import QtQuick
import QtQuick.Layouts
import qs

Rectangle {
  id: root

  implicitWidth: wsp.implicitWidth + 10
  implicitHeight: 28
  color: Style.bg
  radius: 5

  RowLayout {
    id: wsp
    anchors.centerIn: parent

    Repeater {
      model: niri.workspaces //qmllint disable
      Rectangle {
        id: container
        color: "transparent"
        visible: index < 11 //qmllint disable
        implicitWidth: uLine.implicitWidth
        height: 28

        Rectangle {
          id: uLine
          anchors.bottom: parent.bottom
          anchors.bottomMargin: 4
          implicitWidth: model.name ? wsName.implicitWidth + 10 : 30 //qmllint disable
          height: 2
          color: Style.cyan
          // color: model.isActive ? Config.colors.fg : Config.colors.bgPurple //qmllint disable
          opacity: model.isActive ? 1 : 0.3 //qmllint disable 
        }
        Text {
          id: wsName
          anchors {
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: 2
          }
          color: Style.cyan
          opacity: model.isActive ? 1 : 0.3 //qmllint disable 
          text: model.name //qmllint disable
          font {
            family: Style.caskmononf
            pixelSize: 18
          }
        }
      }
    }
  }
}
