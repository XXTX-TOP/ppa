#!/usr/bin/bash
cd kernel
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages
apt-ftparchive release . > Release
gpg --default-key "XXTXTOP-kernel" -abs -o - Release > Release.gpg
gpg --default-key "XXTXTOP-kernel" --clearsign -o - Release > InRelease
cd ..

time1=$(date)
git add .
git commit -m "(Get-Date -Format "hhddMMyy")"
git push