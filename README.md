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

```sh
sudo apt install -fy git adb
```

## Usage

### Windows

open the Terminal/powershell on the `src` folder and run the following command:

```ps1
.\src\android-debloater.ps1
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

# Credits

Some of the bloatware found was related to **[Universal Android Debloater](https://github.com/0x192/universal-android-debloater)**'s descriptions reporting shady business related to OEM apps, thank you very much UAD Team!
