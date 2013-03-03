Ruby PogoScript
=================

Ruby PogoScript is a bridge to the official PogoScript compiler.

    PogoScript.compile File.read("script.pogo")


Installation
------------

    gem install pogo-script


Dependencies
------------

This library depends on the `pogo-script-source` gem which is
updated any time a new version of PogoScript is released. (The
`pogo-script-source` gem's version number is synced with each
official PogoScript release.) This way you can build against
different versions of PogoScript by requiring the correct version of
the `pogo-script-source` gem.

In addition, you can use this library with unreleased versions of
PogoScript by setting the `POGOSCRIPT_SOURCE_PATH` environment
variable:

    export POGOSCRIPT_SOURCE_PATH=/path/to/pogo-script/extras/pogo-script.js

### JSON

The `json` library is also required but is not explicitly stated as a
gem dependency. If you're on Ruby 1.8 you'll need to install the
`json` or `json_pure` gem. On Ruby 1.9, `json` is included in the
standard library.

### ExecJS

The [ExecJS](https://github.com/sstephenson/execjs) library is used to automatically choose the best JavaScript engine for your platform. Check out its [README](https://github.com/sstephenson/execjs/blob/master/README.md) for a complete list of supported engines.
