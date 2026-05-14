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
  ];

  programs.git = {
    enable = true;
    settings.user = {
      name = "wangfiox";
      email = "wangfiox@gmail.com";
    };
  };
  programs.starship = {
    enable = true;
  };
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ll = "ls -alh";
    };
  };
  programs.man.enable = true;

}
