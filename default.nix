{ lib, pkgs }:

pkgs.runCommand "wetter-1.0" {
} /* sh */ ''
  ${pkgs.coreutils}/bin/mkdir -p $out/bin
  ${pkgs.gnused}/bin/sed \
      's@^#!buildShellBin .*@export PATH=${lib.makeBinPath [
        pkgs.attr
        pkgs.coreutils
        pkgs.curl
        pkgs.gawk
        pkgs.gnuplot
        pkgs.gnused
        pkgs.jq
      ]}@' \
      < ${./wetter} \
      > $out/bin/wetter
  ${pkgs.coreutils}/bin/chmod +x $out/bin/wetter
''
