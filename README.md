# jlimas Homebrew tap

## mongoquery

```sh
brew install jlimas/tap/mongoquery
```

The formula becomes available after the first published CalVer release of
[mongoquery](https://github.com/jlimas/mongoquery).

```sh
brew update
brew upgrade mongoquery
```

The source repository's release workflow maintains `Formula/mongoquery.rb`.
It installs prebuilt, checksummed binaries for macOS and Linux on Intel/AMD64
and ARM64. No Go installation is required.

## Maintenance

Do not edit release URLs, versions, or checksums by hand. Publish a new
`vYYYY.MM.DD.N` GitHub Release in the source repository; once assets are uploaded,
the release workflow commits the generated formula here using a deploy key
scoped to this repository. Prereleases and releases that are no longer latest
do not update the stable formula.

Formula changes are tested with Homebrew on macOS and Linux. If a formula update
fails, rerun only the failed `homebrew` job in the source release workflow.
