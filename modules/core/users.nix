{
  config,
  pkgs,
  ...
}: {
  programs.zsh.enable = true;
  users = {
    mutableUsers = false;
    users = {
      root.passwordFile = "/persist/secrets/root";
      sioodmy = {
        isNormalUser = true;
        passwordFile = "/persist/secrets/sioodmy";
        extraGroups = [
          "wheel"
          "gitea"
          "docker"
          "systemd-journal"
          "vboxusers"
          "audio"
          "plugdev"
          "wireshark"
          "video"
          "input"
          "lp"
          "networkmanager"
          "power"
          "nix"
        ];
        uid = 1000;
        shell = pkgs.zsh;
        # changeme
        initialHashedPassword = "$y$j9T$OMptZfwbCi8wXqWho2Eca0$V7GNYVR6BFb0YHFBwSdJNGuGeLLv2R5zNWC/NL/R6aA";
        openssh.authorizedKeys.keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE9ExEl6WqtCI4yCqbSAhAGmzvVp/nYADbgy/Qi4AKQy sioodmy@anthe"];
      };
    };
  };
}
