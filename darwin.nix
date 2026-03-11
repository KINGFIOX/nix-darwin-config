{ config, pkgs, ... }:

{
  # macOS 相关配置

  # 允许使用 Touch ID 进行 sudo 认证
  security.pam.services.sudo_local.touchIdAuth = true;

  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };

  # 启用 x86_64 跨平台支持（Rosetta 2）
  # 因为使用 Determinate Nix Installer（nix.enable = false），
  # 通过写入额外的 nix 配置文件来补充 extra-platforms 设置
  environment.etc."nix/nix.custom.conf".text = ''
    extra-platforms = x86_64-darwin aarch64-darwin
  '';
}
