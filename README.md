# uncrustify-objc

Format Objective-C code with [Uncrustify](https://github.com/uncrustify/uncrustify).

## Installation

Clone or download this repository to a proper location, add the `bin` directory to the `PATH` for easy access:

```sh
export PATH="$PATH:/path/to/uncrustify-objc/bin"
```

## Usage

```
uncrustify-objc dir [dir] [dir] ...
```

Examples:

```console
$ cd ~/projects/awesome
$ uncrustify-objc .
```

```console
$ uncrustify-objc /path/to/some/directory ~/iOSProject ~/CocoaProject
```

## Xcode Extension

You may install [XCFormat](https://apps.apple.com/us/app/xcformat/id1165321484?mt=12)
to format your code in Xcode. To let XCFormat use our Uncrustify config file:

1. Replace the executable file `uncrustify` at `/Applications/XCFormat.app/Contents/PlugIns/SourceExtension.appex/Contents/Resources`
2. Open XCFormat, click "Config" button under the "Uncrustify" tab, replace the config file `uncrustify.cfg` in the opened Finder
