cask "holdmylid" do
  version "1.0.6"
  sha256 "142378a000be15668afe25a575e26bfbfd3a838e569d2068d97e4f5bfd173e66"

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
