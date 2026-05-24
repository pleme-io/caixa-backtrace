# nix/modules/home-manager.nix — auto-generated from backtrace.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.backtrace; in {
  options.programs.backtrace = {
    enable = lib.mkEnableOption "backtrace";
    package = lib.mkOption { type = lib.types.package; default = pkgs.backtrace or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
