{ config, pkgs, ... }:

{
  # macOS 相关配置

  # 允许使用 Touch ID 进行 sudo 认证
  security.pam.services.sudo_local.touchIdAuth = true;
}
