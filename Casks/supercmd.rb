cask "supercmd" do
  version "1.0.9"
  sha256 "609fb2666735cfcffd4b6b320af79f662ae2368c0b4a5037d02b1f516c18c9a0"

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
