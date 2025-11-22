
{
  description = "chaotic-repo and home-manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable"; 
home-manager = {
     url = "github:nix-community/home-manager";
     inputs.nixpkgs.follows = "nixpkgs";
   };
  };

  outputs = { nixpkgs, chaotic, home-manager, ... }: {
    nixosConfigurations = {
      nixOS = nixpkgs.lib.nixosSystem { # Replace "nixOS" with your system's hostname 
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          chaotic.nixosModules.default
          home-manager.nixosModules.home-manager
        ];
      };
    };
  };
}
