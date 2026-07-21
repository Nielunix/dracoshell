import QtQuick
import QtQuick.Layouts
import Quickshell
import qs
Scope {
  //qmllint disable
  PanelWindow {
    id: root

    color: Style.bg 
    implicitHeight: 25

    anchors {
      top: true
      right: true
      left: true
    }

    //right
    RowLayout {
      id: cright

      spacing: 5

      anchors {
        right: parent.right
        verticalCenter: parent.verticalCenter
        rightMargin: 15
      }

      Battery {}

      Clock {}
    }

    //center
    RowLayout {
      id: ccenter

      spacing: 16

      anchors {
        centerIn: parent
      }


    }

    //left
    RowLayout {
      id: cleft

      spacing: 16

      anchors {
        left: parent.left
        verticalCenter: parent.verticalCenter
        leftMargin: 15
      }
      HyprWorkspace {}
      SystemTray {}
    }
  }
}
