{
  description = "developement flake for quickshell";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system} = {
        default = pkgs.mkShell {
          packages = [
            pkgs.zsh
            pkgs.qt6.qt5compat
            pkgs.qt6.qtdeclarative
            pkgs.qt6.qtbase
            pkgs.qt6.qtlanguageserver
          ];

          shellHook = ''
            echo "environment loaded successfullly"
            exec zsh
          '';
        };

        test = pkgs.mkShell {
          shellHook = ''
            echo "test"
          '';
        };
      };
    };
}
