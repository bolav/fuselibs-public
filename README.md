# Fuselibs
[![TeamCity](https://tc.outracks.com/app/rest/builds/buildType:(id:FuselibsPublic_Trigger)/statusIcon)](https://tc.outracks.com/project.html?projectId=FuselibsPublic)
[![license: MIT](https://img.shields.io/github/license/fusetools/fuselibs-public.svg)](LICENSE.txt)
[![Slack](https://img.shields.io/badge/chat-on%20slack-blue.svg)](https://fusecommunity.slack.com/messages/fuselibs)

Fuselibs is the [Uno](https://www.fusetools.com/docs/uno/uno-lang)-libraries that provide
the UI framework used in [Fuse](https://www.fusetools.com/) apps.


## How do I build and test?

### Windows

* `build.bat` runs stuff (which downloads uno if needed), and builds all packages.
* `test.bat` runs all tests.

### macOS

* `build.sh` runs stuff (which downloads uno if needed), and builds all packages.
* `test.sh` runs all tests.


### Fuse

You may use a locally built copy of fuselibs with an installed copy of
Fuse. This is done by creating a file named `.unoconfig` in either a Fuse
project directory (applies to that project only), or in your home
directory (applies to all projects). It should contain something like the
following:

```
Packages.SourcePaths += <path-to-fuselibs>/Source
```

You'll need to replace `<path-to-fuselibs>` above with the actual path to
your fuselibs checkout.


## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

### Reporting issues

Please report issues [here](https://github.com/fusetools/fuselibs-public/issues).

## What's this "Stuff" thing?

Stuff is the tool that downloads and extracts `uno` (which is required to build fuselibs), as well as some other useful utilities. The `Stuff` directory contains `stuff.exe`, a few `.stuff`-files and a few `.packages`-files. `stuff.exe` is a tool that reads the `.stuff`-files, and download and extract them into the source tree. The dependencies specified in the `.package`-files installed lazily by `uno doctor` when needed. This is all automated in `build.bat` and `build.sh`.

After `stuff.exe` has done it's job, you can find:

| Component                      | Path           |
|:-------------------------------|:---------------|
| Prebuilt uno wrapper (Windows) | Stuff/uno.exe  |
| Prebuilt uno wrapper (macOS)   | Stuff/uno      |
| Prebuilt core packages         | Stuff/lib      |
| Development tools              | Stuff/Devtools |
