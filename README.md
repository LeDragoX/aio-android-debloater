<div align="center">
  <h1> AIO Android Debloater </h1>
  <h1>
    <img width=25% src="assets/android-11-logo.png">
  </h1>
</div>

## Resume

This Script can be used via terminal to uninstall bloat Android apps.

⚠️ **Disclaimer:** You're doing this at your own risk, I am not responsible for any data loss or damage that may occur.

## Dependencies

Using the scripts will require ADB (Android Debug Bridge) installed on your OS and accessible through the terminal.

For **Windows**: <https://developer.android.com/tools/releases/platform-tools>

- Put **ALL** the files inside `src` folder, so the script can use the `adb` command.

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
chmod --recursive +x *.sh     # Current folder files
chmod --recursive +x **/*.sh  # All folders inside files
bash ./src/android-debloater.sh
```

## App Alternatives

If an native OEM app was removed, I suggest you some alternatives from Google:

- **[Calculator](https://play.google.com/store/apps/details?id=com.google.android.calculator)**
- **[Calendar](https://play.google.com/store/apps/details?id=com.google.android.calendar)**
- **[Clock](https://play.google.com/store/apps/details?id=com.google.android.deskclock)**
- **[Contacts](https://play.google.com/store/apps/details?id=com.google.android.contacts)**
- **[Files](https://play.google.com/store/apps/details?id=com.google.android.apps.nbu.files)**
- **[Gallery](https://play.google.com/store/apps/details?id=com.google.android.apps.photosgo)**
- **[Messages (SMS)](https://play.google.com/store/apps/details?id=com.google.android.apps.messaging)**
- **[Phone Dialer](https://play.google.com/store/apps/details?id=com.google.android.dialer)**

## Credits

Some of the bloatware found was related to **_[Universal Android Debloater](https://github.com/0x192/universal-android-debloater)_**'s descriptions reporting shady business related to OEM apps, thank you very much UAD Team!
