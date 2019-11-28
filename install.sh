# Setup ZIP
pkg install zip -y

# ANTILAG AOV
PATH=/sdcard/Android/obb/com.garena.game.kgvn
OBB=$PATH/main.358570.com.garena.game.kgvn.obb
if [ -e $OBB ]; then
  cd /sdcard
  mkdir ANTILAG-AOV
  mkdir UNZIP
  unzip $OBB -d UNZIP
  mv /sdcard/UNZIP/assets/AssetBundle ANTILAG-AOV/AssetBundle
  mv /sdcard/UNZIP/assets/Sound ANTILAG-AOV/Sound
  rm -rf UNZIP
else
 echo "- Install AOV Before !"
fi;
