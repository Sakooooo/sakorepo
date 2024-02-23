# get kodi deb
wget https://mirrors.kodi.tv/releases/darwin/ios-arm64/org.xbmc.kodi-ios_20.4_iphoneos-arm64.deb?https=1 -O kodi.deb

# extract
ar x kodi.deb

tar xpvf data.tar.xz

# make ipa
mkdir Payload
mv ./Applications/Kodi.app Payload

# patch
# https://reddit.com/r/jailbreak/s/zzDKVhb8AE
rm -r ./Payload/Kodi.app/Frameworks/lib/python3.11/config-3.11-darwin

# make into ipa again
zip -r kodi.ipa ./Payload

# cleanup
rmdir Applications
rm -r Payload
rm control.tar.gz data.tar.xz debian-binary kodi.deb
