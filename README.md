<div align="center">
  <h1> AIO Android Debloater </h1>
  <h1>
    <img width=25% src="assets/android-11-logo.png">
  </h1>
</div>

## Resume

This Script can be used via terminal to uninstall bloat Android apps.

⚠️ **Disclaimer:** You're doing this at your own risk, I am not responsible for any data loss or damage that may occur.

> Btw, this script is kinda outdated, don't expect too much.

## Dependencies

```sh
sudo apt install -fy git adb
```

## Usage

```sh

mkdir --parents ~/Downloads
git clone https://github.com/LeDragoX/aio-android-debloater.git ~/Downloads/aio-android-debloater
cd ~/Downloads/aio-android-debloater/
chmod --recursive +x *.sh     # Current folder files
chmod --recursive +x **/*.sh  # All folders inside files
./src/android-debloater.sh
```
