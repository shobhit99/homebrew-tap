cask "superisland" do
  version "1.0.9"
  
  on_arm do
    sha256 "895983074455c57a9f7ba2632cc59d3fabfea32b906b6b17a919e52849ff4f41"
    url "https://github.com/shobhit99/SuperIsland/releases/download/#{version}/SuperIsland.dmg"
  end

  on_intel do
    sha256 "b2d84beae1b01c51f160d96ab58eee9bc66eccca7d41ecfa6b707fff40ebc88e"
    url "https://github.com/shobhit99/superisland/releases/download/#{version}/SuperIsland-x86_64.dmg"
  end

  name "SuperIsland"
  desc "Interactive island for the Mac notch"
  homepage "https://dynamicisland.app/"

  depends_on macos: :sonoma

  app "SuperIsland.app"

  zap trash: [
    "~/Library/Application Support/SuperIsland",
    "~/Library/Caches/com.workview.SuperIsland",
    "~/Library/Preferences/com.workview.SuperIsland.plist",
  ]
end
