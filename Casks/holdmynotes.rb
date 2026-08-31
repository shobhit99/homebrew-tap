cask "holdmynotes" do
  version "1.0.7"
  sha256 "dc65116d29f68aab3b85b8b937945c9ff9be1670101b92a331ef59f25bf65b2a"

  url "https://github.com/shobhit99/holdmynotes-releases/releases/download/v#{version}/HoldMyNotes-#{version}.dmg"
  name "Hold My Notes"
  desc "Sticky notes that live at the edge of your screen"
  homepage "https://github.com/shobhit99/holdmynotes-releases"

  # The app ships a Sparkle updater and updates itself from the same releases.
  auto_updates true
  depends_on macos: :ventura

  app "HoldMyNotes.app"

  # Notes, settings and the encryption key live in the sandbox container.
  zap trash: [
    "~/Library/Caches/com.shobhit.HoldMyNotes",
    "~/Library/Containers/com.shobhit.HoldMyNotes",
    "~/Library/HTTPStorages/com.shobhit.HoldMyNotes",
    "~/Library/Saved Application State/com.shobhit.HoldMyNotes.savedState",
  ]
end
