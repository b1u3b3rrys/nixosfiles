{ config, pkgs, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
	./desktop/wmpkgs.nix
	./desktop/usrpkgs.nix
  ./hardware-and-other-things/networking-and-users.nix
  ./hardware-and-other-things/additional-hardware.nix
    ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  #experemental features
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "26.05"; # Did you read the comment?
}
