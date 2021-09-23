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

## Download Latest Version

The code is always on the `main` branch, this is the _Bleeding-Edge_ but always functional version.

- [Download [Zip]](https://github.com/LeDragoX/AIOAndroidDebloater/archive/main.zip)

## Usage

```sh
# Dependencies
sudo apt install -fy adb

mkdir --parents ~/Downloads
git clone https://github.com/LeDragoX/LinuxScript.git ~/Downloads/LinuxScript
cd ~/Downloads/LinuxScript/
chmod --recursive +x *.sh     # Current folder files
chmod --recursive +x **/*.sh  # All folders inside files
./src/AndroidDebloater.sh
```
