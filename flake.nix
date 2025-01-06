{
  description = "A VST development environment";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    parts.url = "github:hercules-ci/flake-parts";
  };
  outputs = { self, nixpkgs, parts }@inputs:
    parts.lib.mkFlake { inherit inputs; } {
      imports = [ ./nix/shell.nix ];
      systems =
        [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
    };
}
