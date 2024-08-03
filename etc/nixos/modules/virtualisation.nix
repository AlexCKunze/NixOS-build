{ ... }:
{
  virtualisation = {
      libvirtd.enable = true;
      docker.enable = true;
      podman = {
          enable = true;
          defaultNetwork.settings.dns_enabled = true;
      };
  };
}
