{ ... }: {

  services.libinput.enable = true;
  services.xserver.config = ''
    Section "InputClass"
      Identifier "mouse accel"
      Driver "libinput"
      MatchIsPointer "on"
      Option "AccelProfile" "flat"
      Option "AccelSpeed" "0"
    EndSection
  ''; 
  services.libinput.mouse.middleEmulation = false;

}
