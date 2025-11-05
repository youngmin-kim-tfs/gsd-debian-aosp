#! /bin/bash
set -x

SDK=/data/android
AVD=/data/android/avd/SeqStudio.avd

cat <<EOF > "${AVD}"/emulator-user.ini
window.x = 0
window.y = 0
window.scale = 1.28
EOF

ANDROID_HOME_SDK="${SDK}"
EMULATOR="${SDK}"/sdk/emulator/emulator
ADB="${SDK}"/sdk/platform-tools/adb

"${EMULATOR}" -avd SeqStudio -no-snapshot -no-boot-anim

# adb shell
# "${ADB}" shell pm disable com.android.systemui
# "${ADB}" shell pm disable com.android.launcher3


