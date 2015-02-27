{stdenv, fetchurl, which, pkgconfig, SDL, gtk, mesa, SDL_ttf, boost}:

stdenv.mkDerivation {
  name = "mupen64plus-2.0";
  src = fetchurl {
    url = https://mupen64plus.googlecode.com/files/mupen64plus-bundle-src-2.0.tar.gz;
    sha256 = "2a269ca77797d7eb3759cbbfecbdc1d985e773e5be155d469c13f034e37e7e4d";
  };
  
  buildInputs = [ which pkgconfig SDL gtk mesa SDL_ttf boost ];
  
  preConfigure = ''
    # Fix some hardcoded paths
    sed -i -e "s|/usr/local|$out|g" source/mupen64plus-core/src/osal/files_unix.c
  '';
  
  buildPhase = "COREDIR=$out/lib/ PREFIX=$out ./m64p_build.sh";
  installPhase = "COREDIR=$out/lib/ PREFIX=$out ./m64p_install.sh";
  
  meta = {
    description = "A Nintendo 64 Emulator";
    license = stdenv.lib.licenses.gpl2Plus;
    homepage = http://code.google.com/p/mupen64plus;
    maintainers = [ stdenv.lib.maintainers.sander ];
  };
}
