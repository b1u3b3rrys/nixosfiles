
{ config, lib, pkgs, ... }:
{
programs.nano.enable = false;
 environment.systemPackages = with pkgs;  [
    micro
  ];
   environment.variables = {
   		EDITOR = "micro";
   };
}
