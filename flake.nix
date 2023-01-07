{
  inputs.decky.url = "github:SkyLeite/decky-nix/main";

  outputs = { self, nixpkgs, decky }: {
    plugins.default = decky.lib.mkPlugin {
      meta = {
        name = "Decky Nix Demo";
        description = "A demo plugin to show off Nix!";
        author = "Sky Leite";
        version = "1";
      };

      frontend = {
        src = ./frontend;
        npmDepsHash = "sha256-x9tteHGKLF1UF1FsQ/LwI8QEOuCfk5nqjEYTeoVcq7U=";
      };

      python = { src = ./backend; };
    };
  };
}
