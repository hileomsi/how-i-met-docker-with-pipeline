{ pkgs ? import <nixpkgs> {}
}:
pkgs.mkShell {
  name = "dev-shell";
  buildInputs = [
    pkgs.nodejs-16_x
    pkgs.awscli    
    pkgs.yarn
    pkgs.docker
    pkgs.docker_compose
  ];
  shellHook = ''
    set -a
    source .env
    set +a
  '';
}