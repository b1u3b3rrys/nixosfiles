{ config, pkgs, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
	./wmpackages.nix
	./usrpackages.nix
  ./
	./misc.nix
	./pipes.nix
	./fonts.nix
	./shell.nix
    ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  #experemental features
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "26.05"; # Did you read the comment?
}
