{ config, pkgs, self, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = [
    pkgs.vim
  ];

  # 使用 Determinate Nix Installer 时需禁用 nix-darwin 的 Nix 管理
  nix.enable = false;

  # 以下选项在 nix.enable = false 时无效，需在 ~/.config/nix/nix.conf 中手动配置：
  # experimental-features = nix-command flakes
  # extra-platforms = x86_64-darwin aarch64-darwin

  # Enable alternative shell support in nix-darwin.
  # programs.fish.enable = true;

  # Set Git commit hash for darwin-version.
  system.configurationRevision = self.rev or self.dirtyRev or null;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 6;

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";
}
