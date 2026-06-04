cask "superisland" do
  version "1.0.9"
  
  on_arm do
    sha256 "b7f94fdb0842da105a5d60c058e1b65a275dda7fbcfb594f61b278804d1e78bd"
    url "https://github.com/shobhit99/SuperIsland/releases/download/#{version}/SuperIsland.dmg"
  end

  on_intel do
    sha256 "da5cecb1b86af2aa386a9fa8d0e6a4ee3df45ac787145de91052757ed44f60d7"
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
