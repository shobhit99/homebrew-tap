cask "superisland" do
  version "1.0.8"

  on_arm do
    sha256 "f47339e68ff815e53240ea5163388ebecbc9b0722c7be7f33c49853376d7d5ba"
    url "https://github.com/shobhit99/SuperIsland/releases/download/#{version}/SuperIsland.dmg"
  end

  on_intel do
    sha256 "eb26abd006d463b853927bffb0c32f9d2b9f945092af0beed5a1dc27ba682a50"
    url "https://github.com/shobhit99/superisland/releases/download/#{version}/SuperIsland-x86_64.dmg"
  end

  name "SuperIsland"
  desc "Interactive island for the Mac notch"
  homepage "https://dynamicisland.app/"

  depends_on macos: ">= :sonoma"

  app "SuperIsland.app"

  zap trash: [
    "~/Library/Application Support/SuperIsland",
    "~/Library/Caches/com.workview.SuperIsland",
    "~/Library/Preferences/com.workview.SuperIsland.plist",
  ]
end
