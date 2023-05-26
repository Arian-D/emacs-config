{
  description = "My Emacs config";

  inputs = {
    emacs-overlay.url = "github:nix-community/emacs-overlay";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, emacs-overlay }:
    with flake-utils.lib;
    eachSystem [ system.x86_64-linux system.aarch64-linux ] (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ emacs-overlay.overlays.emacs ];
        };
      in {
        packages.default = (pkgs.emacsWithPackagesFromUsePackage {
          config = ./.emacs.d/init.el;
          defaultInitFile = true;
        });
      });
}
