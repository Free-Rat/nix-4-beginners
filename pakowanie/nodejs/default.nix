{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "simple-node-server";
  version = "1.0";

  src = ./.;

  buildInputs = [ pkgs.nodejs ];

  installPhase = ''
    mkdir -p $out/bin
    echo "#!${pkgs.nodejs}/bin/node" > $out/bin/simple-node-server
    cat server.js >> $out/bin/simple-node-server
    chmod +x $out/bin/simple-node-server
  '';

  meta = {
    description = "A simple HTTP server in Node.js";
    license = pkgs.lib.licenses.mit;
    platforms = pkgs.lib.platforms.unix;
  };
}
