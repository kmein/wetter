{
  description = "wetter";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = inputs: {
    packages.x86_64-linux.wetter = inputs.nixpkgs.legacyPackages.x86_64-linux.callPackage ./. {};
  };
}
