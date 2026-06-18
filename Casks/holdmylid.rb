cask "holdmylid" do
  version "1.0.2"
  sha256 "953593529a6b4be8e2e76ec661de4e88caf1314d0ac4df4153026371ea8638b0"

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
