import "../../config.js" as Config
import QtQuick
import Quickshell.Services.UPower

//icon return String.fromCodePoint(0x.....)
Rectangle {
  id: root

  property int batState: UPower.displayDevice.state
  property real batPercent: UPower.displayDevice.percentage
  readonly property string batStateDef: {
    if (batState === 1)
      return "Charging";
    if (batState === 2)
      return "Discharging";

    if (batState === 4)
      return "Fully-Charged";
  }
  readonly property string batCritical: {
    if (batPercent <= 0.2)
      return "Please Charge Me";

    if (batPercent <= 0.15)
      return "Hey Please Charge Me Now !!!!!!!!!!!!";

    if (batPercent <= 0.05)
      return "CHAGRE ME NOW !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";

    return "";
  }
  readonly property string batPercentDef: {
    if (batPercent >= 0.9)
      return "........!";

    if (batPercent >= 0.8)
      return ".......!.";

    if (batPercent >= 0.7)
      return "......!..";

    if (batPercent >= 0.6)
      return ".....!...";

    if (batPercent >= 0.5)
      return "....!....";

    if (batPercent >= 0.4)
      return "...!.....";

    if (batPercent >= 0.3)
      return "..!......";

    if (batPercent >= 0.2)
      return ".!.......";

    if (batPercent >= 0.1)
      return "!........";

    if (batPercent >= 0)
      return ".........";
  }
  readonly property string stateColor: {
    if (batPercent >= 0.2)
      return Config.colorsCat.Green;

    if (batPercent >= 0.15)
      return Config.colorsCat.Peach;

    if (batPercent < 0.05)
      return Config.colorsCat.Red;
  }

  implicitWidth: battery.implicitWidth + 20
  implicitHeight: battery.implicitHeight + 4
  color: Config.colorsCat.Crust
  radius: 5

  Text {
    id: battery

    anchors.centerIn: parent
    text: {
      if (root.batPercent <= 20)
        (root.batStateDef + root.batPercentDef);
      else
        root.batCritical;
    }
    color: root.stateColor

    font {
      family: Config.fonts.caskmononf
      pixelSize: 18
    }
  }
}
