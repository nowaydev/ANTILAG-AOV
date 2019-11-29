# Setup ZIP
pkg install zip -y
# Setup APP
mount -o rw,remount /system
mkdir /system/app/RootExplorer
mv /data/data/com.termux/files/home/ANTILAG-AOV/root.apk /system/app/RootExplorer/RootExplorer.apk
chmod 755 /system/app/RootExplorer
chmod 644 /system/app/RootExplorer/RootExplorer.apk
# ANTILAG
cd /sdcard
mkdir ANTILAG
cd /sdcard/Android/obb/com.garena.game.kgvn
mkdir UNZIP
unzip *.obb -d UNZIP
cd ~
mv -f  /sdcard/Android/obb/*kgvn/UNZIP/assets/AssetBundle /sdcard/ANTILAG/AssetBundle
mv -f  /sdcard/Android/obb/*kgvn/UNZIP/assets/Sound /sdcard/ANTILAG/Sound
cd /sdcard/Android/obb/com.garena.game.kgvn
rm -rf UNZIP
reboot
