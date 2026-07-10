cask "holdmylid" do
  version "1.0.4"
  sha256 "41d570d55f567d078584caf7c6d56775a747361cd8cb54b8b457717fb9b40f00"

  url "https://github.com/shobhit99/holdmylid-releases/releases/download/#{version}/HoldMyLid.dmg"
  name "Hold My Lid"
  desc "Keeps coding agents running with the laptop lid closed"
  homepage "https://holdmylid.app/"

  depends_on macos: :sonoma

  app "HoldMyLid.app"

  zap trash: [
    "~/.config/holdmylid",
    "~/.holdmylid",
    "~/Library/Caches/com.holdmylid.app",
    "~/Library/HTTPStorages/com.holdmylid.app",
    "~/Library/Preferences/com.holdmylid.app.plist",
  ]
end
