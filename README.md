<div align="center">
  <h1> AIO Android Debloater </h1>
  <h1>
    <img width=25% src="assets/android11-logo.png">
  </h1>
</div>

## Resume

This Script can be used via terminal to uninstall bloat Android apps.

⚠️ **Disclaimer:** You're doing this at your own risk, I am not responsible for any data loss or damage that may occur.

> Btw, this script is kinda outdated, don't expect too much.

## Usage

```sh
# Dependencies
sudo apt install -fy git adb

mkdir --parents ~/Downloads
git clone https://github.com/LeDragoX/AIOAndroidDebloater.git ~/Downloads/AIOAndroidDebloater
cd ~/Downloads/AIOAndroidDebloater/
chmod --recursive +x *.sh     # Current folder files
chmod --recursive +x **/*.sh  # All folders inside files
./src/AndroidDebloater.sh
```
