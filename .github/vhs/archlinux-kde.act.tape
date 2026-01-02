Output assets/archlinux-kde.gif
Set Width 1200
Set Height 675
Set FontSize 18
Set Padding 24

Type "docker run --rm deck0:ci bash -lc 'echo \"== OS ==\"; cat /etc/os-release; echo; echo \"== HOME ==\"; pwd; ls -la; echo; echo \"== PACKAGES ==\"; pacman -Q | head -n 5'"
Enter
Sleep 3s
