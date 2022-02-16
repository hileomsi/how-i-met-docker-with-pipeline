{ pkgs ? import <nixpkgs> {}
}:
pkgs.mkShell {
  name = "dev-shell";
  buildInputs = [
    pkgs.nodejs-16_x
    pkgs.yarn
    pkgs.docker
    pkgs.docker_compose
  ];
}