# uncrustify-objc

Format Objective-C code with [Uncrustify](https://github.com/uncrustify/uncrustify).

## Installation

Clone or download this repository to a proper location, add the `bin` directory to the `PATH` for easy access:

```sh
export PATH="/path/to/uncrustify-objc/bin:$PATH"
```

## Usage

```
uncrustify-objc [dir] [dir] ...
```

Examples:

```console
$ cd ~/projects/awesome
$ uncrustify-objc
```

```console
$ uncrustify-objc /data/projects/XYKit ~/iOSProject
```

## Xcode Extension

You may install [XCFormat](https://apps.apple.com/us/app/xcformat/id1165321484?mt=12) to format your code in Xcode. To let XCFormat use our Uncrustify config file:

1. Open XCFormat
2. Click the "Uncrustify" tab, then click "Config" button
3. In the opened Finder, replace `uncrustify` and `uncrustify.cfg` with this repo's
