import QtQuick
import QtQuick.Layouts
import Quickshell

PanelWindow {
  id: root

  color: 'transparent'
  implicitHeight: 35

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

    HyprWorkspace {}
    // NiriWorkspace {}
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
    // HyprWindow {}
    // NiriWindow {}
    SystemTray {}
  }
}
