{ inputs, ... }: {
  perSystem = { pkgs, system, ... }:
    let
      buildInputs = with pkgs.coqPackages_8_19; [
        coq
        coq-lsp
        VST
        # pkgs.compcert
        pkgs.dune_3
      ];
      greeting = "Verified Software Toolchain";
      shellHook = "echo ${greeting}";
      name = "vst";
    in {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      devShells.default = pkgs.mkShell { inherit name buildInputs shellHook; };
    };
}
