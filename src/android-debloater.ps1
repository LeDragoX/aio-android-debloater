function Remove-Bloat() {
    $ThirdPartyApps = @(
        # 3rd-Party
        "com.amazon.mp3"                           # Amazon Music
        "com.booking"                              # Booking.com
        "com.einnovation.temu"                     # Temu
        # "com.facebook.katana"                    # Facebook
        # "com.linkedin.android"                   # LinkedIn
        "com.inmobi.weather"                       # Weather
        "com.kwai.video"                           # Kwai
        "com.pdfreader.free.viewer.documentreader" # PDF Reader
        "com.shopee.br"                            # Shopee (Brazil Variant)
        "com.zhiliaoapp.musically"                 # TikTok
        "flipboard.app"                            # Flipboard
    )

    $CommonApps = @(
        # Google (common)
        # "android.googleSearch.googleSearchWidget" # Google Search
        "com.google.android.apps.books"             # Google Play Books
        "com.google.android.apps.chromecast.app"    # Google Home
        "com.google.android.apps.fitness"           # Google Fit
        "com.google.android.apps.magazines"         # Google Play Magazines
        "com.google.android.apps.podcasts"          # Google Podcasts
        "com.google.android.apps.subscriptions.red" # Google One
        "com.google.android.apps.tachyon"           # Google Duo
        "com.google.android.apps.walletnfcrel"      # Wallet
        "com.google.android.apps.youtube.music"     # YouTube Music
        "com.google.android.feedback"               # Market Feedback Agent
        # "com.google.android.googlequicksearchbox" # Google App
        "com.google.android.marvin.talkback"        # Google Talkback
        "com.google.android.talk"                   # Google Hangouts
        "com.google.android.videos"                 # Google TV
        # "com.google.android.youtube"              # YouTube

        # Other
        "com.android.email"                                  # Email
        "com.android.noisefield"                             # Bubbles
        "com.arcsoft.picturesbest.app"                       # Best Face
        "com.sec.android.daemonapp.ap.yahoonews"             # News Daemon (EUR)
        "com.sec.android.widgetapp.ap.yahoonews"             # Yahoo! News
        "com.sec.android.widgetapp.ap.yahoostock.stockclock" # Yahoo! Finance
    )

    $AsusApps = @(
        # Asus
        "com.asus.brapp"         # ASUS BR Apps (Brazil Variant?)
        "com.asus.collage"       # ASUS Photo Collage
        "com.asus.easylauncher"  # ASUS Easy Launcher
        "com.asus.ephotoburst"
        "com.asus.gamewidget"    # ASUS Game Genie
        "com.asus.ia.asusapp"    # MyASUS - ASUS Support
        "com.asus.kidslauncher"  # ASUS Kids Launcher
        "com.asus.livedemo"      # ASUS Demo
        "com.asus.microfilm"     # ASUS Micro Film
        "com.asus.mobilemanager" # Mobile Manager
        "com.asus.quickmemo"     # ASUS Quick Memo
        "com.asus.selfiemaster"  # ASUS Selfie Master
        "com.asus.server.azs"    # ASUS ZenUI Services
        "com.asus.task"          # Do It Later
        "com.asus.themeapp"      # ASUS Themes
        "com.asus.userfeedback"  # FAQ / ZenUI Help
        "com.asus.weathertime"   # ASUS Weather
        "com.asus.wellness"      # Zen Fitness
        "com.asus.zentalk"       # Zen Talk
    )

    $MotorolaApps = @(
        # Motorola
        "com.motorola.brapps"           # App Box (Brazil Variant?)
        "com.motorola.ccc.notification" # Hello Shopping / Hello You
        "com.motorola.dimo"             # Dimo
        # "com.motorola.moto"           # Moto

        # Games
        "ball.sort.puzzle.color.sorting.bubble.games" # Ball Sort Puzzle
        "com.block.juggle"                            # Block Blast!
        "com.king.candycrushsaga"                     # Candy Crush Saga
        "com.moonactive.coinmaster"                   # Coin Master
        "com.oakever.tiletrip"                        # Tile Explorer
        "com.soulcompany.bubbleshooter.relaxing"      # Bubble Shooter Relaxing
        "com.tripledot.solitaire"                     # Solitaire
        "com.vitastudio.mahjong"                      # Vita Mahjong
        "games.spearmint.triplecrush"                 # Tiledom
    )

    $SamsungApps = @(
        # Samsung
        "com.samsung.android.livewallpaper.deepsea" # Deep Sea
        "com.samsung.helphub"                       # Help
        "com.samsung.swift.app.kiesair"             # Kies Air
        "com.sec.android.app.kieswifi"              # Kies via Wi-Fi
        "com.sec.android.app.samsungapps"           # Samsung Apps
        "com.sec.spp.push"                          # Samsung Push Service
    )

    $XiaomiApps = @(
        # Xiaomi (Global)
        "com.android.browser"                    # Mi Browser (Hidden)
        "com.android.midrive"                    # Mi Drive
        "com.android.providers.PartnerBookmarks" # PartnerBookmarks
        "com.android.thememanager"               # Themes
        "com.autonavi.minimap"                   # Xiaomi GPS
        "com.baidu.duersdk.opensdk"              # Duer stuff from Baidu
        "com.baidu.input_mi"                     # Baidu IME (Baidu keyboard)
        "com.baidu.searchbox"                    # Baidu App search engine
        "com.bsp.catchlog"                       # CatchLog
        "com.facebook.appmanager"                # Facebook App Manager
        "com.facebook.services"                  # Facebook Services
        "com.facebook.system"                    # Facebook App Installer
        "com.mi.android.globalFileexplorer"      # Mi File Manager
        "com.mi.globalbrowser"                   # Mi Browser (New)
        "com.mi.global.bbs"                      # Xiaomi Community (New)
        "com.mi.global.shop"                     # Mi App Store
        "com.mi.android.globalminusscreen"       # App Vault / Left launcher screen
        "com.micredit.in.gp"                     # Mi Credit
        "com.mipay.in.wallet"                    # Mi Pay (Old)
        "com.mipay.wallet.in"                    # Mi Pay (New)
        "com.miui.analytics"                     # Analytics
        "com.miui.android.fashiongallery"        # Wallpaper Carrousel
        "com.miui.calculator"                    # Mi Calculator
        "com.miui.cleaner"                       # Cleaner
        "com.miui.daemonapp"                     # MIUI Daemon (Old)
        "com.miui.daemon"                        # MIUI Daemon (New)
        "com.miui.enbbs"                         # MIUI Forum (Old)
        "com.miui.gallery"                       # Mi Gallery
        "com.miui.hybrid"                        # QuickApps
        "com.miui.hybrid.accessory"              # QuickApps Hybrid Accessory
        "com.miui.miservice"                     # Services & Feedback
        "com.miui.msa.global"                    # Xiaomi Ads System
        "com.miui.player"                        # Mi Music
        "com.miui.notes"                         # Mi Notes
        "com.miui.touchassistant"                # QuickBall
        "com.miui.videoplayer"                   # Mi Video
        "com.miui.yellowpage"                    # Yellow Pages
        "com.netflix.partner.activation"         # PartnerNetflixActivation
        "com.qiyi.video"                         # IQIYI
        "com.xiaomi.calendar"                    # Mi Calendar
        "com.xiaomi.glgm"                        # Game Center
        "com.xiaomi.joyose"                      # Joyose
        "com.xiaomi.midrop"                      # Mi Drop
        "com.xiaomi.mipicks"                     # GetApps (Xiaomi "Play Store")
        "com.xiaomi.mirecycle"                   # Mi Recycle
        "com.xiaomi.payment"                     # Xiaomi Payment
        "com.xiaomi.scanner"                     # Mi Scanner
        "com.xiaomi.simactivate.service"         # Xiaomi SIM Activation Service
        "cn.wps.xiaomi.abroad.lite"              # Mi Doc viewer

        # Games
        "com.block.juggle"                                    # Block Blast!
        "com.block.puzzle.game.hippo.mi"                      # Block Puzzle Guardian
        "com.bubble.free.bubblestory"                         # Bubble Story
        "com.crazy.juicer.xm"                                 # Crazy Juicer
        "com.logame.eliminateintruder3d"                      # Dust Settle
        "com.mintgames.triplecrush.tile.fun"                  # Tile Fun
        "com.sukhavati.gotoplaying.bubble.BubbleShooter.mint" # Bubble Shooter And Friends
    )

    Write-Host "`nDebloating Third-Party Apps..." -ForegroundColor Green
    ForEach ($Bloat in $ThirdPartyApps) {
        Write-Host "Trying to remove: $Bloat " -NoNewline -ForegroundColor Green
        adb shell pm uninstall --user 0 $Bloat
    }

    Write-Host "`nDebloating Common Apps..." -ForegroundColor Green
    ForEach ($Bloat in $CommonApps) {
        Write-Host "Trying to remove: $Bloat " -NoNewline -ForegroundColor Green
        adb shell pm uninstall --user 0 $Bloat
    }

    Write-Host "`nDebloating Asus Apps..." -ForegroundColor Green
    ForEach ($Bloat in $AsusApps) {
        Write-Host "Trying to remove: $Bloat " -NoNewline -ForegroundColor Green
        adb shell pm uninstall --user 0 $Bloat
    }

    Write-Host "`nDebloating Motorola Apps..." -ForegroundColor Green
    ForEach ($Bloat in $MotorolaApps) {
        Write-Host "Trying to remove: $Bloat " -NoNewline -ForegroundColor Green
        adb shell pm uninstall --user 0 $Bloat
    }

    Write-Host "`nDebloating Samsung Apps..." -ForegroundColor Green
    ForEach ($Bloat in $SamsungApps) {
        Write-Host "Trying to remove: $Bloat " -NoNewline -ForegroundColor Green
        adb shell pm uninstall --user 0 $Bloat
    }

    Write-Host "`nDebloating Xiaomi Apps..." -ForegroundColor Green
    ForEach ($Bloat in $XiaomiApps) {
        Write-Host "Trying to remove: $Bloat " -NoNewline -ForegroundColor Green
        adb shell pm uninstall --user 0 $Bloat
    }
}

Remove-Bloat
Write-Host "`nYou need to reboot your phone and see if it's not bootlooping" -ForegroundColor Yellow
