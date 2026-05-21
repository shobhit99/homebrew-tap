# shobhit99/homebrew-tap

Homebrew tap for [SuperIsland](https://github.com/shobhit99/superisland) and other casks.

## Install

```bash
brew install --cask shobhit99/tap/superisland
```

The tap is auto-resolved by Homebrew (`shobhit99/tap` → `github.com/shobhit99/homebrew-tap`).

## Casks

- [`superisland`](Casks/superisland.rb) — interactive island for the Mac notch. Per-arch DMGs via `on_arm` / `on_intel`.

## Publishing this tap

This folder is the source of truth in the SuperIsland monorepo. To publish it as a standalone tap repo:

```bash
# One-time setup
gh repo create shobhit99/homebrew-tap --public --description "Homebrew tap for SuperIsland and other casks"

# On every release, mirror this folder into the tap repo
cd /tmp && rm -rf homebrew-tap && gh repo clone shobhit99/homebrew-tap
cp -R <path-to-superisland>/homebrew-tap/. homebrew-tap/
cd homebrew-tap && git add -A && git commit -m "superisland v<version>" && git push
```

## Release flow for SuperIsland

After building DMGs (`./scripts/build-and-release.sh` and `./scripts/build-and-release-intel.sh`):

1. Upload `build/SuperIsland.dmg` and `build-intel/SuperIsland-x86_64.dmg` to the GitHub release.
2. Compute SHA256s:
   ```bash
   shasum -a 256 build/SuperIsland.dmg
   shasum -a 256 build-intel/SuperIsland-x86_64.dmg
   ```
3. Update `Casks/superisland.rb`: `version`, both `sha256` values.
4. Mirror this folder to the tap repo (see above) and push.
