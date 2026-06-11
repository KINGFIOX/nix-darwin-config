{ config, pkgs, ... }:

{
  home.stateVersion = "26.11";

  home.packages = with pkgs; [
    htop
    ripgrep
    fzf
    tmux
    lazygit
    ranger
    nixfmt
    nil
    cloc
    aria2
    pandoc
    uv
    nixd
    wget
    codex
    gh
  ];

  programs.fish = {
    enable = true;
    # Use Oh My Fish from Nix store, no imperative installer needed.
    interactiveShellInit = ''
      set -gx OMF_PATH ${pkgs.oh-my-fish}/share/oh-my-fish
      source $OMF_PATH/init.fish
    '';
  };

  programs.git = {
    enable = true;
    settings.user = {
      name = "wangfiox";
      email = "wangfiox@gmail.com";
    };
  };

  programs.man.enable = true;

}
