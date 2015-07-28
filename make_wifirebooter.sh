#!/bin/sh

APPFILENAME="WiFiRebooter"
SHELLSCRIPT="wifireboot.sh"
ICONFILE="app.icns"

mkdir -p ${APPFILENAME}.app/Contents/{MacOS,Resources}
cat > ${APPFILENAME}.app/Contents/Info.plist <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>CFBundleDisplayName</key>
    <string>Wi-Fi Rebooter</string>
    <key>CFBundleExecutable</key>
    <string>${SHELLSCRIPT}</string>
    <key>CFBundleIconFile</key>
    <string>app.icns</string>
    <key>CFBundleName</key>
    <string>Wi-Fi Rebooter</string>
    <key>CFBundleShortVersionString</key>
    <string>Version 0.0.1</string>
    <key>CFBundleVersion</key>
    <string>0.0.1</string>
  </dict>
</plist>
EOF


cp ${SHELLSCRIPT} ${APPFILENAME}.app/Contents/MacOS/
cp ${ICONFILE} ${APPFILENAME}.app/Contents/Resources/

chmod +x ${APPFILENAME}.app/Contents/MacOS/${SHELLSCRIPT}
