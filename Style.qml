pragma Singleton
import Quickshell
import Quickshell.Io
import QtQuick

//the schemes are based on Base16 theming
// base00: "",
// base01: "",
// base02: "",
// base03: "",
// base04: "",
// base05: "",
// base06: "",
// base07: "",
// base08: "",
// base09: "",
// base0A: "",
// base0B: "",
// base0C: "",
// base0D: "",
// base0E: "",
// base0F: ""

Singleton {
  id: themes

  //colors
  property string theme: "greyscale"
  readonly property var dark: {
    "gruvbox": {
      base00: "#282828",
      base01: "#3C3836",
      base02: "#504945",
      base03: "#665C54",
      base04: "#928374",
      base05: "#EBDBB2",
      base06: "#FBF1C7",
      base07: "#F9F5D7",
      base08: "#CC241D",
      base09: "#D65D0E",
      base0A: "#D79921",
      base0B: "#98971A",
      base0C: "#689D6A",
      base0D: "#458588",
      base0E: "#B16286",
      base0F: "#9D0006"
    },
    "catppuccin": {
      base00: "#1e1e2e",
      base01: "#181825",
      base02: "#313244",
      base03: "#45475a",
      base04: "#585b70",
      base05: "#cdd6f4",
      base06: "#f5e0dc",
      base07: "#b4befe",
      base08: "#f38ba8",
      base09: "#fab387",
      base0A: "#f9e2af",
      base0B: "#a6e3a1",
      base0C: "#94e2d5",
      base0D: "#89b4fa",
      base0E: "#cba6f7",
      base0F: "#f2cdcd"
    },
    "greyscale": {
      base00: "#101010",
      base01: "#252525",
      base02: "#464646",
      base03: "#525252",
      base04: "#ABABAB",
      base05: "#B9B9B9",
      base06: "#E3E3E3",
      base07: "#F7F7F7",
      base08: "#7C7C7C",
      base09: "#999999",
      base0A: "#A0A0A0",
      base0B: "#8E8E8E",
      base0C: "#868686",
      base0D: "#686868",
      base0E: "#747474",
      base0F: "#5E5E5E"
    },
    "black-metal": {
      base00: "#000000",
      base01: "#121212",
      base02: "#222222",
      base03: "#333333",
      base04: "#999999",
      base05: "#c1c1c1",
      base06: "#999999",
      base07: "#c1c1c1",
      base08: "#5f8787",
      base09: "#aaaaaa",
      base0A: "#a06666",
      base0B: "#dd9999",
      base0C: "#aaaaaa",
      base0D: "#888888",
      base0E: "#999999",
      base0F: "#444444"
    },
    "black-metal-venom": {
      base00: "#000000",
      base01: "#121212",
      base02: "#222222",
      base03: "#333333",
      base04: "#999999",
      base05: "#c1c1c1",
      base06: "#999999",
      base07: "#c1c1c1",
      base08: "#5f8787",
      base09: "#aaaaaa",
      base0A: "#79241f",
      base0B: "#f8f7f2",
      base0C: "#aaaaaa",
      base0D: "#888888",
      base0E: "#999999",
      base0F: "#444444"
    },
    "black-metal-nile": {
      base00: "#000000",
      base01: "#121212",
      base02: "#222222",
      base03: "#333333",
      base04: "#999999",
      base05: "#c1c1c1",
      base06: "#999999",
      base07: "#c1c1c1",
      base08: "#5f8787",
      base09: "#aaaaaa",
      base0A: "#777755",
      base0B: "#aa9988",
      base0C: "#aaaaaa",
      base0D: "#888888",
      base0E: "#999999",
      base0F: "#444444"
    },
    "black-metal-mayhem": {
      base00: "#000000",
      base01: "#121212",
      base02: "#222222",
      base03: "#333333",
      base04: "#999999",
      base05: "#c1c1c1",
      base06: "#999999",
      base07: "#c1c1c1",
      base08: "#5f8787",
      base09: "#aaaaaa",
      base0A: "#eecc6c",
      base0B: "#f3ecd4",
      base0C: "#aaaaaa",
      base0D: "#888888",
      base0E: "#999999",
      base0F: "#444444"
    },
    "black-metal-marduk": {
      base00: "#000000",
      base01: "#121212",
      base02: "#222222",
      base03: "#333333",
      base04: "#999999",
      base05: "#c1c1c1",
      base06: "#999999",
      base07: "#c1c1c1",
      base08: "#5f8787",
      base09: "#aaaaaa",
      base0A: "#626b67",
      base0B: "#a5aaa7",
      base0C: "#aaaaaa",
      base0D: "#888888",
      base0E: "#999999",
      base0F: "#444444"
    },
    "black-metal-khold": {
      base00: "#000000",
      base01: "#121212",
      base02: "#222222",
      base03: "#333333",
      base04: "#999999",
      base05: "#c1c1c1",
      base06: "#999999",
      base07: "#c1c1c1",
      base08: "#5f8787",
      base09: "#aaaaaa",
      base0A: "#974b46",
      base0B: "#eceee3",
      base0C: "#aaaaaa",
      base0D: "#888888",
      base0E: "#999999",
      base0F: "#444444"
    },
    "black-metal-immortal": {
      base00: "#000000",
      base01: "#121212",
      base02: "#222222",
      base03: "#333333",
      base04: "#999999",
      base05: "#c1c1c1",
      base06: "#999999",
      base07: "#c1c1c1",
      base08: "#5f8787",
      base09: "#aaaaaa",
      base0A: "#556677",
      base0B: "#7799bb",
      base0C: "#aaaaaa",
      base0D: "#888888",
      base0E: "#999999",
      base0F: "#444444"
    },
    "black-metal-gorgoroth": {
      base00: "#000000",
      base01: "#121212",
      base02: "#222222",
      base03: "#333333",
      base04: "#999999",
      base05: "#c1c1c1",
      base06: "#999999",
      base07: "#c1c1c1",
      base08: "#5f8787",
      base09: "#aaaaaa",
      base0A: "#8c7f70",
      base0B: "#9b8d7f",
      base0C: "#aaaaaa",
      base0D: "#888888",
      base0E: "#999999",
      base0F: "#444444"
    },
    "black-metal-dark-funeral": {
      base00: "#000000",
      base01: "#121212",
      base02: "#222222",
      base03: "#333333",
      base04: "#999999",
      base05: "#c1c1c1",
      base06: "#999999",
      base07: "#c1c1c1",
      base08: "#5f8787",
      base09: "#aaaaaa",
      base0A: "#5f81a5",
      base0B: "#d0dfee",
      base0C: "#aaaaaa",
      base0D: "#888888",
      base0E: "#999999",
      base0F: "#444444"
    },
    "black-metal-burzum": {
      base00: "#000000",
      base01: "#121212",
      base02: "#222222",
      base03: "#333333",
      base04: "#999999",
      base05: "#c1c1c1",
      base06: "#999999",
      base07: "#c1c1c1",
      base08: "#5f8787",
      base09: "#aaaaaa",
      base0A: "#99bbaa",
      base0B: "#ddeecc",
      base0C: "#aaaaaa",
      base0D: "#888888",
      base0E: "#999999",
      base0F: "#444444"
    },
    "black-metal-bathory": {
      base00: "#000000",
      base01: "#121212",
      base02: "#222222",
      base03: "#333333",
      base04: "#999999",
      base05: "#c1c1c1",
      base06: "#999999",
      base07: "#c1c1c1",
      base08: "#5f8787",
      base09: "#aaaaaa",
      base0A: "#e78a53",
      base0B: "#fbcb97",
      base0C: "#aaaaaa",
      base0D: "#888888",
      base0E: "#999999",
      base0F: "#444444"
    }
  }

  readonly property var light: {
    "gruvbox": {
      base00: "#FBF1C7",
      base01: "#EBDBB2",
      base02: "#D5C4A1",
      base03: "#BDAE93",
      base04: "#7C6F64",
      base05: "#3C3836",
      base06: "#282828",
      base07: "#1D2021",
      base08: "#CC241D",
      base09: "#D65D0E",
      base0A: "#D79921",
      base0B: "#98971A",
      base0C: "#689D6A",
      base0D: "#458588",
      base0E: "#B16286",
      base0F: "#9D0006"
    },
    "catppuccin": {
      base00: "#eff1f5",
      base01: "#e6e9ef",
      base02: "#ccd0da",
      base03: "#bcc0cc",
      base04: "#acb0be",
      base05: "#4c4f69",
      base06: "#dc8a78",
      base07: "#7287fd",
      base08: "#d20f39",
      base09: "#fe640b",
      base0A: "#df8e1d",
      base0B: "#40a02b",
      base0C: "#179299",
      base0D: "#1e66f5",
      base0E: "#8839ef",
      base0F: "#dd7878"
    },
    "greyscale": {
      base00: "#F7F7F7",
      base01: "#E3E3E3",
      base02: "#B9B9B9",
      base03: "#ABABAB",
      base04: "#525252",
      base05: "#464646",
      base06: "#252525",
      base07: "#101010",
      base08: "#7C7C7C",
      base09: "#999999",
      base0A: "#A0A0A0",
      base0B: "#8E8E8E",
      base0C: "#868686",
      base0D: "#686868",
      base0E: "#747474",
      base0F: "#5E5E5E"
    }
  }

  property bool darkmode: true
  readonly property var currentThemes: darkmode ? dark[theme] : light[theme]

  readonly property color bg: currentThemes.base00
  readonly property color lighterBg: currentThemes.base01
  readonly property color selectBg: currentThemes.base02
  readonly property color highlightBg: currentThemes.base03
  readonly property color darkFg: currentThemes.base04
  readonly property color fg: currentThemes.base05
  readonly property color lightFg: currentThemes.base06
  readonly property color lightBg: currentThemes.base07
  readonly property color red: currentThemes.base08
  readonly property color organge: currentThemes.base09
  readonly property color yellow: currentThemes.base0A
  readonly property color green: currentThemes.base0B
  readonly property color cyan: currentThemes.base0C
  readonly property color blue: currentThemes.base0D
  readonly property color purple: currentThemes.base0E
  readonly property color brown: currentThemes.base0F

  //fonts
  readonly property string jetmononf: "JetBrainsMono Nerd Font"
  readonly property string caskmononf: "CaskaydiaMono Nerd Font"

  IpcHandler {
    target: "theme"
    function set(name: string): void {
      themes.theme = name;
    }
    function darkmode(value: bool): void {
      themes.darkmode = value;
    }
  }
}
