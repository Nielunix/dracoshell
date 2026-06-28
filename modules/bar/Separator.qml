import QtQuick
import "../../config.js" as Config

Text {
  id: root
  text: "|"
  color: Config.colors.green
  anchors.verticalCenter: parent.verticalCenter
  font {
    family: Config.fonts.jetmononf
    pixelSize: 13
  }
}
