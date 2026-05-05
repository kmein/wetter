{
  description = "wetter";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = inputs: {
    packages.x86_64-linux =
      let
        pkgs = import inputs.nixpkgs {
          system = "x86_64-linux";
          overlays = [
            inputs.self.overlays.default
          ];
        };
      in
      {
        inherit (pkgs) wetter;
        default = pkgs.wetter;
      };
    overlays.default = final: prev: {
      wetter = prev.callPackage ./. { };
    };
  };
}
