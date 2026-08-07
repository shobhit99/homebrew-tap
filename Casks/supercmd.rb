cask "supercmd" do
  version "1.0.4"
  # TODO: replace before merging. Produce with, against the notarized DMG
  # attached to the 1.0.4 GitHub release:
  #   shasum -a 256 SuperCmd.dmg
  # This placeholder is intentionally not a valid hash so `brew audit` and
  # any install attempt fail loudly rather than silently fetching nothing.
  sha256 "REPLACE_WITH_SHA256_OF_NOTARIZED_1_0_4_DMG"

  url "https://github.com/SuperCmdLabs/SuperCmd-v2-releases/releases/download/#{version}/SuperCmd.dmg"
  name "SuperCmd"
  desc "Raycast-style command launcher"
  homepage "https://supercmd.sh/"

  depends_on macos: :sequoia

  app "SuperCmd.app"

  zap trash: [
    "~/Library/Application Support/com.supercmd.SuperCmd",
    "~/Library/Application Support/SuperCmd",
    "~/Library/Caches/com.supercmd.SuperCmd",
    "~/Library/Preferences/com.supercmd.SuperCmd.plist",
  ]
end
