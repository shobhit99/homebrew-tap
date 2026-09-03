cask "supercmd" do
  version "1.0.7"
  sha256 "b39f922745348de1e8236fd1e750300ddeff2e68f4b306d01c42026283cceceb"

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
