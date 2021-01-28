#!/bin/bash

# Google

adb shell pm uninstall --user 0 com.google.android.apps.tachyon
adb shell pm uninstall --user 0 com.google.android.marvin.talkback
adb shell pm uninstall --user 0 com.google.android.music
adb shell pm uninstall --user 0 com.google.android.videos

# Asus

adb shell pm list packages
adb shell pm list packages | grep asus
adb shell pm uninstall --user 0 com.asus.server.azs
adb shell pm uninstall --user 0 com.asus.livedemo
adb shell pm uninstall --user 0 com.android.bookmarkprovider
adb shell pm uninstall --user 0 com.asus.brapp
adb shell pm uninstall --user 0 com.asus.task
adb shell pm uninstall --user 0 com.asus.mobilemanager
adb shell pm uninstall --user 0 com.asus.gamewidget
adb shell pm uninstall --user 0 com.asus.microfilm
adb shell pm uninstall --user 0 com.asus.easylauncher
adb shell pm uninstall --user 0 com.asus.themeapp
adb shell pm uninstall --user 0 com.asus.zentalk
adb shell pm uninstall --user 0 com.asus.userfeedback
adb shell pm uninstall --user 0 com.asus.wellness
adb shell pm uninstall --user 0 com.asus.weathertime
adb shell pm uninstall --user 0 com.asus.ephotoburst
adb shell pm uninstall --user 0 com.asus.kidslauncher
adb shell pm uninstall --user 0 com.asus.quickmemo
adb shell pm uninstall --user 0 com.asus.asusapp
adb shell pm uninstall --user 0 com.asus.ia.asusapp
adb shell pm uninstall --user 0 com.asus.selfiemaster
adb shell pm uninstall --user 0 com.asus.collage