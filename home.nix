{ config, pkgs, ... }:

{
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    htop
    ripgrep
    fzf
    tmux
    lazygit
  ];

  programs.git = {
    enable = true;
    settings.user = {
      name = "wangfiox";
      email = "wangfiox@gmail.com";
    };
  };
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };
  programs.starship = {
    enable = true;
  };
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };
  programs.man.enable = true;

}
