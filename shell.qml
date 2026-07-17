//@ pragma UseQApplication
// import Niri

import "./config.js" as Config
import "./modules/bar/"
import QtQuick
import Quickshell

ShellRoot {
    // NOTE: Get Niri Log
    //   Item {
    //     Niri {
    //       id: niri
    //       Component.onCompleted: connect()
    //       onConnected: console.log("Connected to niri")
    //       onErrorOccurred: function (error) {
    //         console.error("Connection error:", error);
    //       }
    //     }
    //   }

    id: root

    Bar {
    }
}
