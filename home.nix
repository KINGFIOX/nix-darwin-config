{ config, pkgs, ... }:

{
  home.stateVersion = "25.11";

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
  ];

  programs.git = {
    enable = true;
    settings.user = {
      name = "wangfiox";
      email = "wangfiox@gmail.com";
    };
  };
  programs.man.enable = true;

}
