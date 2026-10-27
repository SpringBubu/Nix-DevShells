{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; config.allow.unfree = true; };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            (python3.withPackages(ps: with ps; [
              ipython
              ipykernel
              jupyter
              notebook

              matplotlib
              numpy
              pillow
            ]))
            conda
            uv
            stdenv.cc.cc
          ];
          shellHook = ''
          '';
        };
      }
    );
}
