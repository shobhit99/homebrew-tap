cask "supercmd" do
  version "1.0.5"
  sha256 "72e023dbd770ed31e862017a956246b4493d1d5230ca15407b6b3adf0b447267"

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
