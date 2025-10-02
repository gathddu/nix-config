{config, lib, pkgs, ...}:{
  services.syncthing = {
    enable = true;
    group = "root";
    user = "gathddu";
    dataDir = "/home/gathddu";
    configDir = "/home/gathddu/.config/syncthing";
    overrideDevices = true;
    overrideFolders = true;
    settings = {
      devices = {
        "bella-notebook" = {
          id = "FIZLWUW-E3SHM5D-OYUDEW3-BQBJQC3-OHWLFYD-JCFP57Y-VAVSIKS-PYZSMQA";
        };
        
        "bella-pc" = {
          id = "QBUG4QF-7XYOLYJ-KVHWGNO-2XMWHG3-CMESV42-P5DOVCZ-XRMUL2A-ARFYHQA";
        };
      };

      folders = {
        "telepatia" = {
          path = "/home/gathddu/Documents/telepatia";
          devices = ["bella-notebook" "bella-pc"];
        };
      };
    };
  };
}

