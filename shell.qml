import "./config.js" as Config
import "./modules/bar/"
import QtQuick
import Quickshell
import Niri

ShellRoot {
  id: root

  Bar {}
  Item {
    Niri {
        id: niri
        Component.onCompleted: connect()

        onConnected: console.log("Connected to niri")
        onErrorOccurred: function(error) {
            console.error("Connection error:", error)
        }
    }
}
}
