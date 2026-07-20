import QtQuick
import Quickshell
import QtQuick.Layouts
import Quickshell.Services.SystemTray
import "../../config.js" as Config

Rectangle {
  id: root
  color: Config.colorsCat.Crust
  radius: 5
  height: 28
  implicitWidth: if (row.implicitWidth === 0) {
    implicitWidth: 0;
  } else {
    implicitWidth: row.implicitWidth + 20;//qmllint disable
  }

  RowLayout {
    id: row
    anchors.centerIn: parent
    spacing: 10
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

        MouseArea {
          anchors.fill: parent
          acceptedButtons: Qt.LeftButton | Qt.RightButton
          onClicked: mouse => {
            if (mouse.button === Qt.RightButton) {
              console.log("right");
              console.log(modelData.title); //qmllint disable
              if (modelData.hasMenu) {//qmllint disable
                console.log("menu exist");
                modelData.display(QsWindow.window, mouse.x, mouse.y)//qmllint disable
              } else {
                console.log("no menu");
              }
            } else {
              console.log("left");
            }
          }
        }
      }
    }
  }
}
