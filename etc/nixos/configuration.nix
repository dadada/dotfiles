# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/efi";
  boot.loader.grub.enableCryptodisk = true;

  boot.loader.grub.extraEntries = ''
    menuentry "Arch" {
      search --set=arch --fs-uuid 7539-5387
      configfile "($arch)/boot/grub/grub.cfg"
    }
  '';

  boot.initrd.luks.devices = [
      {
        name = "root";
        device = "/dev/disk/by-uuid/1f8a9532-8637-4ffd-8369-2b4824b5add4";
        preLVM = true;
        allowDiscards = true;
      }
  ];

  boot.kernelModules = [ "kvm-amd" "kvm-intel" ];
  virtualisation.libvirtd.enable = true;

  networking.hostName = "metis"; # Define your hostname.
  networking.wireless.enable = false;  # Enables wireless support via wpa_supplicant.

  networking.hosts = {
    "fd42:dead:beef::5054:ff:fe3f:7b7d" = [ "media.dadada.li" "media" ];
    "fd42:dead:beef:1337::" = [ "router.bs.dadada.li" "router.bs" ];
  };

  networking.wireguard.interfaces = {
    bs = {
      ips = [ "fd42:dead:beef:1337::1/64" ];

      privateKeyFile = "/etc/nixos/secrets/wireguard/bs.key";

      peers = [
        {
          publicKey = "XwGbyYNkkYOPMj3m1y/O1ChAfJAQx5P1zxLt3xCthXg=";
          allowedIPs = [ "fd42:dead:beef::/48" ];
          endpoint = "router.bs.dadada.li:51234";
          persistentKeepalive = 25;
        }
      ];
    };
  };

  networking.interfaces.bs.mtu = 1412;

  networking.networkmanager.enable = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget vim fish
  ];

  programs.adb.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = { enable = true; enableSSHSupport = true; };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;
  
  services.fstrim.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = true;

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  # sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  # services.xserver.layout = "us";
  # services.xserver.xkbOptions = "eurosign:e";

  # Enable touchpad support.
  # services.xserver.libinput.enable = true;

  # Enable the KDE Desktop Environment.
  # services.xserver.displayManager.sddm.enable = true;
  # services.xserver.desktopManager.plasma5.enable = true;

  services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.gdm.wayland = true;
  services.xserver.desktopManager.gnome3.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dadada = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "libvirtd" "adbusers"]; # Enable ‘sudo’ for the user.
    #shell = pkgs.fish;
  };

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.03"; # Did you read the comment?

}
