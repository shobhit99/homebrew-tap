cask "holdmylid" do
  version "1.0.3"
  sha256 "a6cacac01dc2d66239757e4dda9d0e625d026f0ebc36fe5f3e4b8e7f15410764"

  url "https://github.com/shobhit99/holdmylid-releases/releases/download/#{version}/HoldMyLid.dmg"
  name "Hold My Lid"
  desc "Keeps coding agents running with the laptop lid closed"
  homepage "https://holdmylid.app/"

  depends_on macos: ">= :sonoma"

  app "HoldMyLid.app"

  zap trash: [
    "~/.config/holdmylid",
    "~/.holdmylid",
    "~/Library/Caches/com.holdmylid.app",
    "~/Library/Preferences/com.holdmylid.app.plist",
  ]
end
