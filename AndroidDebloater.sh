#!/bin/bash

# Before everything, just to be sure thanks to https://gitlab.com/W1nst0n

adb shell pm list packages | grep google
adb shell pm list packages | grep asus
adb shell pm list packages | grep samsung
adb shell pm list packages | grep miui
adb shell pm list packages | grep xiaomi
adb shell pm list packages | grep zte

# https://linuxhint.com/bash_loop_list_strings/
# Declare an array of string with type
declare -a Apps=(
    # Social bloat

    #"com.facebook.katana"              # Facebook
    #"com.instagram.android"            # Instagram
    #"com.google.android.youtube"       # Youtube

    # Google (common)

    "android.googleSearch.googleSearchWidget"       # Google Search
    "com.android.bookmarkprovider"                  # Bookmark Provider
    "com.google.android.apps.books"                 # Google Play Books
    "com.google.android.apps.tachyon"               # Google Duo
    "com.google.android.feedback"                   # Market Feedback Agent
    "com.google.android.googlequicksearchbox"       # Google App
    "com.google.android.talk"                       # Google Hangouts
    "com.google.android.marvin.talkback"            # Google Talkback
    "com.google.android.music"                      # Google Play Music
    "com.google.android.videos"                     # Google Play Movies
    "com.google.android.apps.magazines"             # Google Play Magazines
    "com.google.android.apps.walletnfcrel"          # Wallet
    #"com.google.ar.lens"                            # Google Lens

    # Other

    "com.android.email"                                         # Email
    "com.android.noisefield"                                    # Bubbles
    "com.arcsoft.picturesbest.app"                              # Best Face
    "com.sec.android.daemonapp.ap.yahoonews"                    # News Daemon(EUR)
    "com.sec.android.widgetapp.ap.yahoonews"                    # Yahoo! News
    "com.sec.android.widgetapp.ap.yahoostock.stockclock"        # Yahoo! Finance
    "flipboard.app"                                             # Flipboard

    # Asus

    "com.asus.brapp"                # ASUS BR Apps
    "com.asus.collage"              # ASUS Photo Collage
    "com.asus.easylauncher"         # ASUS Easy Launcher
    "com.asus.ephotoburst"          # 
    "com.asus.gamewidget"           # ASUS Game Genie
    "com.asus.ia.asusapp"           # MyASUS - ASUS Support
    "com.asus.kidslauncher"         # ASUS Kids Launcher
    "com.asus.livedemo"             # ASUS Demo
    "com.asus.microfilm"            # ASUS Micro Film
    "com.asus.mobilemanager"        # Mobile Manager
    "com.asus.quickmemo"            # ASUS Quick Memo
    "com.asus.selfiemaster"         # ASUS Selfie Master
    "com.asus.server.azs"           # ASUS ZenUI Services
    "com.asus.task"                 # Do It Later
    "com.asus.themeapp"             # ASUS Themes
    "com.asus.userfeedback"         # FAQ / ZenUI Help
    "com.asus.weathertime"          # ASUS Weather
    "com.asus.wellness"             # Zen Fitness
    "com.asus.zentalk"              # Zen Talk

    # Samsung

    "com.samsung.android.livewallpaper.deepsea"     # Deep sea
    "com.samsung.helphub"                           # Help
    "com.samsung.swift.app.kiesair"                 # Kies Air
    "com.sec.android.app.kieswifi"                  # Kies via Wi-Fi
    "com.sec.android.app.samsungapps"               # Samsung Apps
    "com.sec.spp.push"                              # Samsung Push Service

    # Xiaomi

    "cn.wps.xiaomi.abroad.lite"                     # Mi Doc viewer
    "com.android.browser"                           # Mi Browser
    "com.android.midrive"                           # Mi Drive
    "com.android.providers.PartnerBookmarks"        # PartnerBookmarks
    "com.autonavi.minimap"                          # Xiaomi GPS
    "com.baidu.duersdk.opensdk"                     # Duer stuff from Baidu
    "com.baidu.input_mi"                            # Baidu IME (Baidu keyboard)
    "com.baidu.searchbox"                           # Baidu App search engine
    "com.bsp.catchlog"
    "com.mi.global.shop"                            # Mi App Store
    "com.micredit.in.gp"                            # Mi Credit
    "com.mipay.in.wallet"                           # Mi Pay
    "com.miui.daemonapp"                            # MIUI Daemon
    "com.miui.hybrid"                               # QuickApps
    "com.miui.touchassistant"                       # QuickBall
    "com.miui.videoplayer"                          # Mi Video
    "com.miui.vsimcore"                             # VsimCore
    "com.miui.yellowpage"                           # Yellow Pages
    "com.netflix.partner.activation"                # PartnerNetflixActivation
    "com.qiyi.video"                                # IQIYI
    "com.xiaomi.joyose"                             # Joyose
    "com.xiaomi.midrop"                             # Mi Drop
    "com.xiaomi.mirecycle"                          # Mi Recycle
    "com.xiaomi.payment"                            # Xiaomi Payment
    # MiWebView
    # Translation Service
)

# Iterate the string array using for loop
for Bloat in ${Apps[@]}; do
    echo "Removing: $Bloat"
    adb shell pm uninstall --user 0 $Bloat
done