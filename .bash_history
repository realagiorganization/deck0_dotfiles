yay -S appimagelauncher
cd 
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
sudo pacman -S base-devel
makepkg -si
yay -S appimagelauncher
sudo pacman -R yay 
sudo pacman -R yay-bin
yay -S appimagelauncher
cd ..
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg
sudo pacman -U 
rm -Rf yay*
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg
sudo pacman -U 
sudo pacman -R yay-bin yay
cd 
git clone https://aur.archlinux.org/appimagelauncher.git
cd appimagelauncher/\
cd appimagelauncher
makepkg
makepkg -si
cd ..
git clone https://aur.archlinux.org/argagg.git
cd argagg/
makepkg -si
sudo pacman -S --needed   base-devel   make   cmake   glib2   cairo   librsvg   fuse2   libarchive   libxpm   curl   boost   qt5-base   qt5-declarative   qt5-tools   patchelf
cd 
git clone https://github.com/TheAssassin/AppImageLauncher.git -b stable
cd AppImageLauncher
git submodule update --init --recursive
export PREFIX="/usr/local/"
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX="$PREFIX" -DUSE_SYSTEM_BOOST=true
# See https://github.com/TheAssassin/AppImageLauncher/issues/251 for more details why this is required
make libappimage libappimageupdate libappimageupdate-qt
cmake .
make
pacman -S glib]
sudo pacman -S glib
pacman -Qi glib2
cmake ..   -DCMAKE_INSTALL_PREFIX="$PREFIX"   -DUSE_SYSTEM_BOOST=ON   -DPKG_CONFIG_EXECUTABLE=/usr/bin/pkg-config
cmake ..   -DCMAKE_INSTALL_PREFIX="$PREFIX"   -DUSE_SYSTEM_BOOST=ON   -DPKG_CONFIG_EXECUTABLE=/usr/bin/pkg-config
sudo pacman -S --needed   glib2-devel   pkgconf
cmake .. -DCMAKE_INSTALL_PREFIX="$PREFIX" -DUSE_SYSTEM_BOOST=true
# See https://github.com/TheAssassin/AppImageLauncher/issues/251 for more details why this is required
make libappimage libappimageupdate libappimageupdate-qt
cmake .
make
pkg-config --variable pc_path pkg-config
ls /usr/lib/pkgconfig/glib-2.0.pc
pkg-config --modversion glib-2.0
find /usr -name glib-2.0.pc 2>/dev/null
sudo steamos-devkit enter
sudo pacman -S   base-devel cmake pkgconf   glib2   cairo librsvg fuse2 libarchive   libxpm curl boost qt5-base qt5-declarative qt5-tools patchelf
find /usr -name glib-2.0.pc 2>/dev/null
cmake .. -DCMAKE_INSTALL_PREFIX="$PREFIX" -DUSE_SYSTEM_BOOST=true
sudo packman -S zlib
sudo pacman -S zlib
cmake .. -DCMAKE_INSTALL_PREFIX="$PREFIX" -DUSE_SYSTEM_BOOST=true\
sudo pacman -S librsvg
cmake .. -DCMAKE_INSTALL_PREFIX="$PREFIX" -DUSE_SYSTEM_BOOST=true\
sudo pacman -S librsvg
cmake .. -DCMAKE_INSTALL_PREFIX="$PREFIX" -DUSE_SYSTEM_BOOST=true\
sudo pacman -S libpng freetype2 harfbuzz libxml pangocairo pangoft2
sudo pacman -S libpng freetype2 harfbuzz 
cmake .. -DCMAKE_INSTALL_PREFIX="$PREFIX" -DUSE_SYSTEM_BOOST=true\
cd ~/Downloads/
ls
mc
chmod +x *.appimage
chmod +x *.AppImage
mc
cd Renoise_3_5_4_Demo_Linux_
cd Renoise_3_5_4_Demo_Linux_x86_64/\
ls
./install.sh 
sudo ./install.sh 
cd ../Redux_1_4_4_Demo_Linux_x86_64/
df
history
pacman -Qe
sudo du -ahx / | sort -rh | head -n 50
df
sudo pacman -Rns chromium
sudo pacman -Rns emacs
sudo pacman -Rns go
df
mkdir -p ~/Applications/renoise
sudo mv /usr/local/share/renoise-3.5.4 ~/Applications/renoise/
mkdir -p ~/.local/share/applications
sudo find /usr/share/applications -name "*renoise*.desktop" -exec mv {} ~/.local/share/applications/ \;
sed -i 's|/usr/local/share/renoise-3.5.4|/home/'"$USER"'/Applications/renoise/renoise-3.5.4|g' ~/.local/share/applications/*.desktop
mkdir -p ~/Applications/renoise
sudo mv /usr/local/share/renoise-3.5.4 ~/Applications/renoise/
mkdir -p ~/.local/share/applications
find /usr/share/applications -name "*renoise*.desktop" -exec cp {} ~/.local/share/applications/ \;
sed -i 's|/usr/local/share/renoise-3.5.4|/home/'"$USER"'/Applications/renoise/renoise-3.5.4|g' ~/.local/share/applications/*.desktop
# Ensure the original Renoise path exists
ls /usr/local/share/ | grep renoise
# If the directory exists, move it to home
mkdir -p ~/Applications/renoise
sudo mv /usr/local/share/renoise-3.5.4 ~/Applications/renoise/ 2>/dev/null || echo "Renoise directory not found"
# Copy desktop entry if it exists
mkdir -p ~/.local/share/applications
find /usr/share/applications -name "*renoise*.desktop" -exec cp {} ~/.local/share/applications/ \; 2>/dev/null || echo "No Renoise .desktop file found"
# Update paths in copied .desktop files
if compgen -G "~/.local/share/applications/*.desktop" > /dev/null; then     sed -i 's|/usr/local/share/renoise-3.5.4|/home/'"$USER"'/Applications/renoise/renoise-3.5.4|g' ~/.local/share/applications/*.desktop; fi
# Search for Renoise installation
RENOISE_DIR=$(find / -type d -name "renoise-3.5.4" 2>/dev/null | head -n 1)
# If Renoise is found, move it to home
if [ -n "$RENOISE_DIR" ]; then     mkdir -p ~/Applications/renoise;     sudo mv "$RENOISE_DIR" ~/Applications/renoise/; fi
# Copy desktop entries if they exist
mkdir -p ~/.local/share/applications
find /usr/share/applications -name "*renoise*.desktop" -exec cp {} ~/.local/share/applications/ \; 2>/dev/null
# Update paths in desktop files
if compgen -G "~/.local/share/applications/*.desktop" > /dev/null; then     sed -i 's|'"$RENOISE_DIR"'|/home/'"$USER"'/Applications/renoise/renoise-3.5.4|g' ~/.local/share/applications/*.desktop; fi
# Define paths
HOME_RENOISE="$HOME/Applications/renoise/renoise-3.5.4"
SYSTEM_RENOISE="/usr/local/share/renoise-3.5.4"
# Move back to system location if it exists in home
if [ -d "$HOME_RENOISE" ]; then     sudo mv "$HOME_RENOISE" "$SYSTEM_RENOISE"; fi
# Restore desktop entries
DESKTOP_FILES=$(find ~/.local/share/applications -name "*renoise*.desktop")
if [ -n "$DESKTOP_FILES" ]; then     for f in $DESKTOP_FILES; do         sed -i 's|'"$HOME_RENOISE"'|'"$SYSTEM_RENOISE"'|g' "$f";         sudo mv "$f" /usr/share/applications/;     done; fi
cd ..
cd Renoise_3_5_4_Demo_Linux_x86_64/
ls
./uninstall.sh 
sudo ./uninstall.sh 
sudo ./install.sh --help
cat Readme.txt 
df
df`
mv ~/Dowloads/*.AppImage ~/AppImages/
cd Downloads/
mv Hydrogen-1.2.6-x86_64.AppImage ~/AppImage
mv ~/AppImage ~/Downloads/Hydrogen-1.2.6-x86_64.AppImage
chmod +x ~/AppImages/*
ls ~/AppImages/
mv Hydrogen-1.2.6-x86_64.AppImage ~/AppImages/
cd 
git clone https://aur.archlinux.org/tracktion-waveform.git
cd tracktion-waveform/
d 
cd 
flatpak install --user flathub com.bitwig.BitwigStudio
flatpak install flathub com.bitwig.BitwigStudio
flatpak remove zrythm
history |grep zrythm
flatpak install flathub org.zrythm.Zrythm --user
flatpak install flathub org.zrythm.Zrythm 
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.zrythm.Zrythm --user
flatpak install --user flathub com.bitwig.BitwigStudio
flatpak install flathub net.sourceforge.kmidimon --user
mc
ls
df
mc
tmux
sudo reboot
mc
sudo pacman -S onboard
onboard
mc
sudo pacman -S gnome-terminal 
gnome-terminal 
mc
tmux
tmux
tmux
tmux
tmux
tmux
# Nintendo Switch
flatpak install --user flathub org.yuzu_emu.yuzu            # https://github.com/yuzu-emu/yuzu
flatpak install --user flathub org.ryujinx.Ryujinx          # https://github.com/Ryujinx/Ryujinx
# Nintendo 3DS
flatpak install --user flathub org.citra_emu.citra          # https://github.com/citra-emu/citra
# Nintendo GameCube / Wii
flatpak install --user flathub org.DolphinEmu.dolphin-emu   # https://github.com/dolphin-emu/dolphin
flatpak install --user flathub org.primehack.PrimeHack      # https://github.com/shiiion/dolphin
# Nintendo DS
flatpak install --user flathub net.kuribo64.melonDS         # https://github.com/melonDS-emu/melonDS
flatpak install --user flathub org.desmume.DeSmuME          # https://github.com/TASEmulators/desmume
# Nintendo 64
flatpak install --user flathub io.github.simple64.simple64 # https://github.com/simple64/simple64
flatpak install --user flathub io.github.m64p.m64p          # https://github.com/m64p/m64p
flatpak install --user flathub org.gopher64.Gopher64        # https://github.com/gopher64/gopher64
# Game Boy / Color / Advance
flatpak install --user flathub io.mgba.mGBA                 # https://github.com/mgba-emu/mgba
flatpak install --user flathub org.sameboy.SameBoy          # https://github.com/LIJI32/SameBoy
flatpak install --user flathub org.vbam.VisualBoyAdvance-M  # https://github.com/visualboyadvance-m/visualboyadvance-m
# SNES
flatpak install --user flathub com.snes9x.Snes9x            # https://github.com/snes9xgit/snes9x
flatpak install --user flathub dev.bsnes.bsnes              # https://github.com/bsnes-emu/bsnes
# NES
flatpak install --user flathub ca._0ldsk00l.Nestopia         # https://github.com/0ldsk00l/nestopia
# Sega Genesis / Mega Drive
flatpak install --user flathub org.blastem.Blastem          # https://github.com/libretro/blastem
flatpak install --user flathub org.kegafusion.KegaFusion    # https://segaretro.org/Kega_Fusion
# Sega Dreamcast / Naomi
flatpak install --user flathub org.flycast.Flycast          # https://github.com/flyinghead/flycast
# PlayStation 1
flatpak install --user flathub org.duckstation.DuckStation  # https://github.com/stenzek/duckstation
flatpak install --user flathub org.mednafen.Mednafen        # https://github.com/mednafen/mednafen
# PlayStation 2
flatpak install --user flathub org.pcsx2.PCSX2              # https://github.com/PCSX2/pcsx2
flatpak install --user flathub org.play.Play                # https://github.com/jpd002/Play-
# PlayStation 3
flatpak install --user flathub org.rpcs3.RPCS3              # https://github.com/RPCS3/rpcs3
# PlayStation Portable
flatpak install --user flathub org.ppsspp.PPSSPP            # https://github.com/hrydgard/ppsspp
# Xbox
flatpak install --user flathub org.xemu.Xemu                # https://github.com/xemu-project/xemu
# Atari
flatpak install --user flathub org.tuxfamily.hatari         # https://github.com/hatari/hatari
flatpak install --user flathub org.atari800.Atari800        # https://github.com/atari800/atari800
# DOS
flatpak install --user flathub io.github.dosbox-staging.DOSBox-Staging # https://github.com/dosbox-staging/dosbox-staging
flatpak install --user flathub org.dosbox.DOSBox            # https://github.com/dosbox-staging/dosbox-staging
# Commodore
flatpak install --user flathub org.vice.VICE                # https://github.com/VICE-Team/svn-mirror
# MSX
flatpak install --user flathub org.openmsx.OpenMSX          # https://github.com/openMSX/openMSX
# Multi-system / Frameworks
flatpak install --user flathub org.libretro.RetroArch       # https://github.com/libretro/RetroArch
flatpak install --user flathub org.retrodeck.RetroDECK      # https://github.com/XargonWan/RetroDECK
flatpak install --user flathub org.pegasus_frontend.Pegasus # https://github.com/mmatyas/pegasus-frontend
flatpak install --user flathub com.github.AmatCoder.mednaffe # https://github.com/AmatCoder/mednaffe
flatpak install --user flathub org.lutris.Lutris            # https://github.com/lutris/lutris
# Experimental / New
flatpak install --user flathub org.shadps4.ShadPS4          # https://github.com/shadps4-emu/shadPS4
flatpak install --user flathub org.parallel.launcher.ParallelLauncher # https://github.com/jagrosh/ParallelLauncher
df
flatpak install --user flathub org.yuzu_emu.yuzu            # https://github.com/yuzu-emu/yuzu
flatpak install --user flathub org.ryujinx.Ryujinx          # https://github.com/Ryujinx/Ryujinx
flatpak install --user flathub org.vita3k.Vita3K
flatpak install --user flathub org.ppsspp.PPSSPP
flatpak install --user flathub org.duckstation.DuckStation
flatpak install --user flathub org.pcsx2.PCSX2
flatpak install --user flathub org.rpcs3.RPCS3
flatpak install --user flathub org.libretro.RetroArch
flatpak install --user flathub io.github.lime3ds.Lime3DS
flatpak install --user flathub org.play.Play
flatpak install --user flathub net.kuribo64.melonDS
flatpak install --user flathub org.desmume.DeSmuME
flatpak install --user flathub org.DolphinEmu.dolphin-emu
flatpak install --user flathub org.primehack.PrimeHack
flatpak install --user flathub org.yuzu_emu.yuzu
flatpak install --user flathub org.ryujinx.Ryujinx
flatpak install --user flathub org.ppsspp.PPSSPP              # PSP emulator (PPSSPP) :contentReference[oaicite:1]{index=1}
flatpak install --user flathub net.rpcs3.RPCS3                # PS3 emulator (RPCS3) :contentReference[oaicite:2]{index=2}
flatpak install --user flathub org.libretro.RetroArch         # RetroArch (multi-console frontend) :contentReference[oaicite:3]{index=3}
flatpak install --user flathub net.pcsx2.PCSX2                # PS2 emulator (PCSX2) :contentReference[oaicite:4]{index=4}
flatpak install --user flathub org.DolphinEmu.dolphin-emu     # Wii/GameCube emulator (Dolphin) :contentReference[oaicite:5]{index=5}
flatpak install --user flathub io.github.melonDS.melonDS      # Nintendo DS emulator (melonDS) :contentReference[oaicite:6]{index=6}
flatpak install --user flathub org.desmume.DeSmuME            # Nintendo DS emulator (DeSmuME) :contentReference[oaicite:7]{index=7}
flatpak install --user flathub org.citra_emu.citra            # Nintendo 3DS emulator (Citra) :contentReference[oaicite:8]{index=8}
flatpak install --user flathub io.github.lime3ds.Lime3DS      # 3DS fork of Citra (Lime3DS) :contentReference[oaicite:9]{index=9}
flatpak install --user flathub io.github.shiiion.primehack    # Dolphin fork (PrimeHack) :contentReference[oaicite:10]{index=10}
flatpak install --user flathub org.yuzu_emu.yuzu              # Nintendo Switch emulator (Yuzu) :contentReference[oaicite:11]{index=11}
flatpak install --user flathub org.ryujinx.Ryujinx            # Nintendo Switch emulator (Ryujinx) :contentReference[oaicite:12]{index=12}
flatpak install --user flathub org.lutris.Lutris              # Game/Emulator launcher & manager :contentReference[oaicite:13]{index=13}
flatpak install --user flathub org.retrodeck.RetroDECK        # Multi-emulator frontend :contentReference[oaicite:14]{index=14}
flatpak install --user flathub org.pegasus_frontend.Pegasus   # Game launcher frontend :contentReference[oaicite:15]{index=15}
flatpak install --user flathub org.yuzu_emu.yuzu-canary
flatpak install --user flathub org.ryujinx.Ryujinx-dev
flatpak install --user flathub org.citra_emu.citra-nightly
flatpak install --user flathub org.citra_emu.citra-canary
flatpak install --user flathub org.DolphinEmu.dolphin-emu-dev
flatpak install --user flathub net.kuribo64.melonDS-dev
flatpak install --user flathub org.vita3k.Vita3K-dev
flatpak install --user flathub org.ppsspp.PPSSPP-dev
flatpak install --user flathub org.duckstation.DuckStation-qt
flatpak install --user flathub org.pcsx2.PCSX2-dev
flatpak install --user flathub org.rpcs3.RPCS3-dev
flatpak install --user flathub org.libretro.RetroArch-tools
flatpak install --user flathub com.github.AmatCoder.mednaffe
flatpak install --user flathub org.retrodeck.RetroDECK-Beta
flatpak install --user flathub org.retrodeck.RetroDECK
tmux
tmux
tmux
tmux
tmux
tmuz
tmux
tmux
tmux
tmux
tmux
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
df
watch -n 1 df
flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --user flathub org.freedesktop.SpeechDispatcher
flatpak install --user flathub com.visualstudio.code
flatpak install --user flathub com.google.Chrome
flatpak install --user flathub io.podman_desktop.PodmanDesktop
sudo pacman -Syu speech-dispatcher speech-dispatcher-utils
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
tmux
if [[ ! $PS1 =~ 133 ]] ; then         PS1='\[\e]133;L\a\]\[\e]133;D;$?\]\[\e]133;A\a\]'$PS1'\[\e]133;B\a\]' ;         PS2='\[\e]133;A\a\]'$PS2'\[\e]133;B\a\]' ;         PS0='\[\e]133;C\a\]' ; fi
tmux
tmux
tmux
chrome
tmux
tmux
tmux
#!/bin/bash
# Disable splash screen on boot for Steam Deck Desktop Mode only
# Make a backup of current GRUB config
sudo cp /etc/default/grub /etc/default/grub.bak
# Add 'quiet splash' removal and 'vt.global_cursor_default=0' for desktop mode only
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="\(.*\)"/GRUB_CMDLINE_LINUX_DEFAULT="\1 nosplash plymouth.enable=0 vt.global_cursor_default=0"/' /etc/default/grub
# Update GRUB to apply changes
sudo update-grub
echo "Splash screen disabled for Desktop Mode. Reboot to see changes."
exit
set -euo pipefail
add_block_once() {   local file="$1" marker="$2" block="$3";   mkdir -p "$(dirname "$file")";   touch "$file";   if ! grep -qF "$marker" "$file"; then     printf '\n%s\n' "$block" >> "$file";   fi; }
BASHRC="$HOME/.bashrc"
PROFILE="$HOME/.profile"
DEVTOOLS_BLOCK="$(cat <<'EOF'
### >>> user-local dev tools >>>
# Always prefer user-local bins
export PATH="$HOME/.local/bin:$PATH"

# webi/envman (used by `gh` installer)
if [ -f "$HOME/.config/envman/PATH.env" ]; then
  . "$HOME/.config/envman/PATH.env"
fi

# nvm (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
### <<< user-local dev tools <<<
EOF

)"
add_block_once "$BASHRC"  "### >>> user-local dev tools >>>" "$DEVTOOLS_BLOCK"
add_block_once "$PROFILE" "### >>> user-local dev tools >>>" "$DEVTOOLS_BLOCK"
# Apply PATH now (current shell)
export PATH="$HOME/.local/bin:$PATH"
if [ -f "$HOME/.config/envman/PATH.env" ]; then
  . "$HOME/.config/envman/PATH.env"; fi
# ---- Node via nvm (user-local, not Flatpak) ----
NVM_VERSION="v0.40.3"
export NVM_DIR="$HOME/.nvm"
if [ ! -s "$NVM_DIR/nvm.sh" ]; then   echo "[*] Installing nvm ${NVM_VERSION} into ${NVM_DIR}";   rm -rf "$NVM_DIR";   mkdir -p "$NVM_DIR";   if command -v git >/dev/null 2>&1; then     git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR";     (cd "$NVM_DIR" && git checkout "$NVM_VERSION" >/dev/null);   else     curl -fsSL "https://github.com/nvm-sh/nvm/archive/refs/tags/${NVM_VERSION}.tar.gz"       | tar -xz -C "$NVM_DIR" --strip-components=1;   fi; fi
# shellcheck disable=SC1090
. "$NVM_DIR/nvm.sh"
echo "[*] Installing latest Node LTS via nvm"
nvm install --lts
nvm use --lts
nvm alias default 'lts/*' >/dev/null 2>&1 || true
# ---- npm "global" into ~/.local (user, not system) ----
mkdir -p "$HOME/.local/bin"
npm config set prefix "$HOME/.local"
export PATH="$HOME/.local/bin:$PATH"
# ---- Install Codex CLI (npm user-global) ----
echo "[*] Installing Codex CLI (@openai/codex)"
npm i -g @openai/codex
# ---- Install GitHub CLI (gh) user-local (no sudo) ----
echo "[*] Installing GitHub CLI (gh) via webi (user-local)"
curl -sS https://webi.sh/gh | sh
# webi writes ~/.config/envman/PATH.env and ~/.local/bin/gh
if [ -f "$HOME/.config/envman/PATH.env" ]; then
  . "$HOME/.config/envman/PATH.env"; fi
# ---- Flatpak user-only installs (apps, terminals, IDEs, monitors) ----
if command -v flatpak >/dev/null 2>&1; then   echo "[*] Adding Flathub (per-user) and installing apps";   flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo;    FLATPAK_APPS=(
    org.wezfurlong.wezterm     org.kde.konsole     com.raggesilver.BlackBox     app.devsuite.Ptyxis
    org.gnu.emacs     org.kde.kate     org.kde.kwrite     org.gnome.Builder     com.visualstudio.code     com.vscodium.codium
    io.missioncenter.MissionCenter     net.nokyan.Resources     org.gnome.Logs     org.gnome.baobab     com.github.tchx84.Flatseal   );    if ! flatpak install --user -y flathub "${FLATPAK_APPS[@]}"; then     echo "[!] Some Flatpak installs failed (app IDs can change).";     echo "    Use: flatpak search <name>  then: flatpak install --user -y flathub <app-id>";   fi; else   echo "[!] flatpak not found; skipping Flatpak installs."; fi
echo
echo "✅ Done."
echo "Restart your terminal OR run: source ~/.bashrc"
echo "Quick checks:"
command -v node  >/dev/null && echo "node:  $(node -v)"
command -v npm   >/dev/null && echo "npm:   $(npm -v)"
command -v codex >/dev/null && (codex --help >/dev/null 2>&1 && echo "codex: OK" || echo "codex: installed")
command -v gh    >/dev/null && echo "gh:    $(gh --version | head -n1)"
echo "TUI monitor tip: run 'top' (usually already installed)."
mc
watch -n 1 df -h
mc
d
.. 
xxx
codex
cd ROMS/Emulation/roms/
codex 
6
55
df
tmux
tmux
watch -n 1 df -h /home/
tmux
mc
cd Desktop/
mkdir MASCHINE_SAMPLES_64GM
mc
watch -n 1 df -h /
watch -n 1 df -h
cd ROMS/Emulation/roms/
ls
codex 
df -h
df -h
df -h
df -h /run/media/deck//Untitled/ & df -h /home
df -h /run/media/deck//Untitled/ & df -h /home
df -H /run/media/deck//Untitled/ & df -H /home
df -H /run/media/deck//Untitled/ & df -H /home
df -H /run/media/deck//Untitled/ & df -H /home
df -H /run/media/deck//Untitled/ & df -H /home
codex
sudo pacman -S krdp
df
codex
  flatpak permission-set kde-authorized remote-desktop org.kde.krdpserver yes
  systemctl --user enable --now app-org.kde.krdpserver.service
  systemctl --user restart app-org.kde.krdpserver.service
flatpak search krdp
sudo systemctl enable xrdp xrdp-sesman
  flatpak install flathub org.kde.krdpserver
  flatpak install flathub org.kde.krdpserver
  sudo pacman -S xrdp xorgxrdp
# Authorize the krdpserver for remote desktop access
flatpak permission-set kde-authorized remote-desktop org.kde.krdpserver yes
# Generate a server certificate
mkdir --parents "$HOME/.local/share/krdpserver"
certificatePath="$HOME/.local/share/krdpserver/krdp.crt"
certificateKeyPath="$HOME/.local/share/krdpserver/krdp.key"
openssl req -nodes -new -x509 -keyout "$certificateKeyPath" -out "$certificatePath" -days 1 -batch
# Configure the certificate and enable system user authentication
kwriteconfig6 --file krdpserverrc --group General --key Certificate "$certificatePath"
kwriteconfig6 --file krdpserverrc --group General --key CertificateKey "$certificateKeyPath"
kwriteconfig6 --file krdpserverrc --group General --key SystemUserEnabled true
# Enable/restart the systemd service
systemctl --user enable --now app-org.kde.krdpserver.service
systemctl --user restart app-org.kde.krdpserver.service
codex
passwd
  xfreerdp /v:127.0.0.1:35589 /u:YOURUSER /p:'YOURPASS' /cert:ignore
  xfreerdp /v:192.168.0.103:35589 /u:YOURUSER /p:'YOURPASS' /cert:ignore
  xfreerdp /v:192.168.0.109:35589 /u:YOURUSER /p:'YOURPASS' /cert:ignore
codex
ip addr
history |grep rdp
 xfreerdp /v:127.0.0.1:35589 /u:deck /p:'1111' /cert:ignore
 xfreerdp /v:127.0.0.1:35589 /u:deck /p:'1111' 
cd ~/Desktop/
vim start-rdp-server.desktop 
cd 
git status
git init .
gh auth login
codex
git push -u origin main
git push -u origin main
  git push -u origin main
