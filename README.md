# SampleProject
This is a repo for a sample project with an issue with SwiftShell 

## Development 

To generate an Xcode project for use during development, use:

```bash
$ swift package generate-xcodeproj
```

## Building

On macOS and Linux, use the following to generate a binary.

```bash
$ swift build
```

To build CommandLineTool for release, use the following:

```bash
$ swift build -c release -Xswiftc -static-stdlib
$ cd .build/release
```

Then, to be able to run it anywhere in macOS, move it to `/usr/local/bin`

```bash
$ cp -f CommandLineTool /usr/local/bin/commandlinetool
```

## Running
Navigate to the Android directory, and run 

```bash
$ commandlinetool clean
```
