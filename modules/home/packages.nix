{ inputs, pkgs, config, ... }:

{
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    inputs.todo.packages."${system}".todo
    maim
    # cli tools
    ffmpeg unzip xclip
    libnotify gnupg yt-dlp
    ripgrep rsync imagemagick
    scrot newsboat unrar
    tealdeer killall onefetch
    du-dust pfetch tokei bandwhich
    grex fd xh direnv
    # gui apps
    obs-studio nsxiv tdesktop monero-gui
    transmission-gtk pavucontrol
    libreoffice-fresh kdenlive gimp keepassxc
    xfce.thunar
    # unfree apps (sorry daddy stallman)
    minecraft
    # dev tools
    python3 git jdk dconf gcc rustc rustfmt cargo
  ];
}
