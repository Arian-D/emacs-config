{
  description = "Arian's Emacs";

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs, flake-utils }: 
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
          emacs = pkgs.emacs29-pgtk;
          dev-tools = with pkgs; [
            git
            bash
            coreutils
            findutils
            cacert
          ];
          lsps = with pkgs; [
            marksman
            yaml-language-server
            gopls
            nil
            rust-analyzer
            terraform-ls
          ];
          all-the-packages = [ emacs ] ++ lsps ++ dev-tools;
          env = pkgs.buildEnv {
            name = "Emacs";
            paths = all-the-packages;
            pathsToLink = [ "/bin" ];
          };
          dockerImage = pkgs.dockerTools.buildImage {
            name = "my-emacs";
            tag = "latest";
            created = "now";
            copyToRoot = env;
            runAsRoot = ''
              #!${pkgs.runtimeShell}
              mkdir -p /tmp
            '';
            config = {
              Cmd = [ "${emacs}" ];
            # TODO: Fix this to avoid having to specify the emacs path
              Volumes = { "/data" = { }; };
            };
          };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = all-the-packages;
        };
        packages.environment = env;
        packages.dockerImage = dockerImage;
      }
    );
}
