{ config, pkgs, ... }:

{
  # Home Manager 配置 - 管理用户级应用程序和 dotfiles

  home.username = "wangfiox";
  home.homeDirectory = "/Users/wangfiox";

  home.stateVersion = "24.11";

  # 用户级安装的应用程序
  home.packages = [
    # 在此添加要通过 home-manager 管理的应用，例如：
    # pkgs.htop
    # pkgs.ripgrep
    # pkgs.fzf
  ];

  # 启用 man 手册
  programs.man.enable = true;
}
