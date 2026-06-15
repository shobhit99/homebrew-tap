cask "holdmylid" do
  version "1.0.0"
  sha256 "4507d99cfb87bb7ebfb46cd535caba09dc42a99b3541c2a9b4a93ccb51ba9595"

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
