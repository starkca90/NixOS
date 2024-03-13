{ config, pkgs, ... }:

{
  imports = [ ./pipewire.nix
              ./dbus.nix
              ./gnome-keyring.nix
              ./fonts.nix
            ];

  # Configure XServer
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      variant = "";
    };
    displaymanager.gdm = {
      enable = true;
    };
    desktopManager.gnome.enable = true;
  };
}
