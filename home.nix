{ config, pkgs, ... }:

{
  home.username = "wangfiox";
  home.homeDirectory = "/Users/wangfiox";

  home.packages = with pkgs; [
    htop
    ripgrep
    fzf
    tmux
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
    enableBashIntegration = true;
    nix-direnv.enable = true;
  };
  programs.starship = {
    enable = true;
  };
  programs.bash = {
    enable = true;
    enableCompletion = true;
  };
  programs.man.enable = true;

  home.stateVersion = "25.11";
}
