# nix/modules/darwin.nix — auto-generated from backtrace.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.backtrace; in {
  options.services.backtrace = {
    enable = lib.mkEnableOption "backtrace";
    package = lib.mkOption { type = lib.types.package; default = pkgs.backtrace or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
