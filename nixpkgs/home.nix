{ config, pkgs, ... }:

{
  programs = {
    alacritty = {
      enable = true;
    };
    home-manager = {
      enable = true;
    };
    feh = {
      enable = true;
    };
    firefox = {
      enable = true;
      # package = pkgs.firefox-devedition-bin-unwrapped;
    };
    git = {
      enable = true;
    };
    neovim = {
      enable = true;
      withNodeJs = true;
      withPython3 = true;
      package = pkgs.neovim-nightly;
    };
    tmux = {
      enable = true;
    };
    zathura = {
      enable = true;
    };
  };

  home = {
    stateVersion = "20.03";
    packages = with pkgs; [
      discord
      docker-compose
      exa
      file
      gimp
      glxinfo
      gparted
      inkscape
      killall
      lsof
      nodejs
      openvpn
      pandoc
      pavucontrol
      pdfgrep
      pdfpc
      steam
      tectonic
      thunderbird
      unrar
      unzip
      vlc
      wget
    ];
  };
}
