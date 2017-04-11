# MacOS App Symlink Clone Maker

## About

This script creates a lightweight unsigned clone of an app by creating symlinks to the original app for everything except the binaries directory (`*.app/Contents/MacOS`) and adding unsigned copies of the app's binaries.

## Why?

This was originally written with Xcode 8 in mind, since it disables the ability to run 3rd party plugins, and the workaround for that is to unsign the binary. The other options available to do this that are out there is to copy the whole entire Xcode app and then unsign the binary ([MakeXcodeGr8Again](https://github.com/fpg1503/MakeXcodeGr8Again)), or to use scripts to switch between signed and unsigned copies of the Xcode binary ([xcunsign](https://github.com/johntmcintosh/xcunsign)). The first option sucks up a bunch of hard drive space, while with the latter option, you have to remember to switch back to the signed binary when needed (like when a deployment build is being made).

## Usage

    [sudo] ./app-symlink-clone Original.app Unsigned-clone.app [custom icon file]

    # Example:
    ./app-symlink-clone /Applications/Xcode.app ~/Applications/Xcode-unsigned.app XcodeUnsigned.png

## TODOs

- Allow app icon of unsigned clone to be specified

## Credits

Special thanks to [steakknife's unsign](https://github.com/steakknife/unsign) and [johntmcintosh's xcunsign](https://github.com/johntmcintosh/xcunsign).

## License

MIT
