<div align="center">
  <h1> AIO Android Debloater </h1>
  <h1>
    <img width=25% src="assets/android-11-logo.png">
  </h1>
</div>

## Resume

This script can be used via terminal to uninstall bloatware Android applications **without ROOT!!!**

⚠️ **Disclaimer:** You're doing this at your own risk, I am not responsible for any data loss or damage that may occur.

## Dependencies

Using the scripts will require ADB (Android Debug Bridge) installed on your OS and accessible through the terminal.

For **Windows**:

- Install ADB from <https://developer.android.com/tools/releases/platform-tools>;
- Put **ALL** the files inside `src` folder, so the script can use the `adb` command;
- Or install ADB **globally** with [Chocolatey](https://chocolatey.org/install#individual):

```ps1
choco install adb
```

For **Linux**:

```sh
sudo pacman -S android-tools # Arch
sudo apt install -fy git adb # Debian / Ubuntu / Mint
sudo yum install adb # Fedora
sudo emerge -a dev-util/android-tools # Gentoo
sudo zypper install adb # OpenSUSE
sudo apk add adb # Alpine
```

## Usage

Before doing anything, make sure you've unlocked **[Developer options](https://developer.android.com/studio/debug/dev-options#enable)** and enabled **[USB debugging](https://developer.android.com/studio/debug/dev-options#debugging)**.

### Windows

open the Terminal/powershell on the `src` folder and run the following command:

```ps1
.\android-debloater.ps1
```

### Linux

```sh
mkdir --parents ~/Downloads
git clone https://github.com/LeDragoX/aio-android-debloater.git ~/Downloads/aio-android-debloater
cd ~/Downloads/aio-android-debloater/
chmod --recursive +x *.sh     # Current folder .sh files
chmod --recursive +x **/*.sh  # All .sh files inside folders
bash ./src/android-debloater.sh
```

## Restoring an App

It is possible to recover an app after removing it, even after rebooting. Using `adb` command on any OS.

```sh
adb shell cmd package install-existing --user 0 com.package.name
```

**_Replace `com.package.name` with the app package name you want back and you're good to go._**

## App Alternatives

If an native OEM app was removed, I suggest you some alternatives from Google:

- **Browser**
  - **[Brave](https://play.google.com/store/apps/details?id=com.brave.browser)**
  - **[Chrome](https://play.google.com/store/apps/details?id=com.android.chrome)** (_Google_)
  - **[Edge](https://play.google.com/store/apps/details?id=com.microsoft.emmx)**
  - **[Firefox](https://play.google.com/store/apps/details?id=org.mozilla.firefox)**
- **[Calculator](https://play.google.com/store/apps/details?id=com.google.android.calculator)**
- **[Calendar](https://play.google.com/store/apps/details?id=com.google.android.calendar)**
- **[Documents](https://play.google.com/store/apps/details?id=com.google.android.apps.docs.editors.docs)**, **[Sheets](https://play.google.com/store/apps/details?id=com.google.android.apps.docs.editors.sheets)** & **[Slides](https://play.google.com/store/apps/details?id=com.google.android.apps.docs.editors.slides)**
- **[Clock](https://play.google.com/store/apps/details?id=com.google.android.deskclock)**
- **[Contacts](https://play.google.com/store/apps/details?id=com.google.android.contacts)**
- **[Files](https://play.google.com/store/apps/details?id=com.google.android.apps.nbu.files)**
- **[Gallery](https://play.google.com/store/apps/details?id=com.google.android.apps.photosgo)**
- **[Messages (SMS)](https://play.google.com/store/apps/details?id=com.google.android.apps.messaging)**
- **[Music](https://play.google.com/store/apps/details?id=org.fossify.musicplayer)** | **[Alternative](https://play.google.com/store/apps/details?id=com.rhmsoft.pulsar)**
- **[Phone Dialer](https://play.google.com/store/apps/details?id=com.google.android.dialer)**
- **[Video](https://play.google.com/store/apps/details?id=org.videolan.vlc)**

_For other any suggestion, check on [Fossify](https://play.google.com/store/apps/dev?id=7297838378654322558), a really solid open-source alternative._

## Credits

Some of the bloatware found was related to **_[Universal Android Debloater](https://github.com/0x192/universal-android-debloater)_**'s descriptions reporting shady business related to OEM apps and apps which will bootloop if removed, thank you very much UAD Team!
