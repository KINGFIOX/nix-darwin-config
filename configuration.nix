{ config, pkgs, self, ... }:

{
  # 定义用户 home 目录，home-manager 依赖此配置
  users.users.wangfiox.home = "/Users/wangfiox";

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = [
    pkgs.vim
  ];

  # 使用 Determinate Nix Installer 时需禁用 nix-darwin 的 Nix 管理
  nix.enable = false;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 6;

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";
}
