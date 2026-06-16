cask "holdmylid" do
  version "1.0.1"
  sha256 "b8aa7900d14cb588cb6569ad899227e55b640315c0120bdb8472c7941ffac01b"

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
