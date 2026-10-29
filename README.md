# maliroq Homebrew Tap

Homebrew formulae for maliroq projects.

## ComposeDrill

ComposeDrill proves whether a Docker Compose application can actually recover from its backup and recovery evidence.

Install on macOS:

```bash
brew install maliroq/tap/composedrill
```

Then verify the install and see the available commands:

```bash
composedrill version
composedrill help
```

Project: https://github.com/maliroq/composedrill

## WireDiet

WireDiet builds minimal, device-specific DNS policies through real, reversible experiments.

Install on macOS:

```bash
brew install maliroq/tap/wirediet
```

Then verify the install and see the available commands:

```bash
wirediet version
wirediet help
```

The WireDiet formula builds locally from the verified `v0.1.0-preview.5` source release. This tap does not distribute an unsigned macOS executable.

Project: https://github.com/maliroq/wirediet

## LibreReplace

LibreReplace compares supported commercial Mac apps with evidence-backed open-source alternatives and shows explicit tradeoffs before you switch.

Install the current ad-hoc-signed, non-notarized preview:

```bash
brew install --cask maliroq/tap/librereplace
```

Homebrew installs the same `v0.1.0-preview.1` DMG published in GitHub Releases. It does not make the app Apple-notarized.

Project: https://github.com/maliroq/librereplace
