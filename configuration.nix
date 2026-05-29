{ config, pkgs, self, ... }:

{
  programs.fish.enable = true;
  environment.shells = [ pkgs.fish ];

  # 让 nix-darwin 接管 wangfiox 用户（已存在的 macOS 用户默认不被管理，
  # 必须加入 knownUsers 并指定 uid，nix-darwin 才会通过 dscl 修改 shell）
  users.knownUsers = [ "wangfiox" ];
  users.users.wangfiox = {
    uid = 501;
    home = "/Users/wangfiox";
    shell = pkgs.fish;
  };

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    vim
    vscode
  ];

  nixpkgs.config.allowUnfree = true;

  # 使用 Determinate Nix Installer 时需禁用 nix-darwin 的 Nix 管理
  nix.enable = false;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 6;

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";
}
