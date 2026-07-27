cask "supercmd" do
  version "1.0.0"
  sha256 "0ee637cb38120835e69b53a201a276cfc5d15f229f5445bcd34d392ddc4e799a"

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
