#!/usr/bin/bash
cd kernel
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages
apt-ftparchive release . > Release
gpg --default-key "XXTXTOP-kernel" -abs -o - Release > Release.gpg
gpg --default-key "XXTXTOP-kernel" --clearsign -o - Release > InRelease
cd ..
git config user.name "XXTXTOP"
git config user.email "xxtxtop@gmail.com"
git add .gitattributes
git add .
git commit -m "$(date)"
git push