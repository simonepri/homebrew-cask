cask "blitz" do
  version "1.13.56"
  sha256 "de5ab576440c76ebbd9cbb4a27432f3fdcae902ba18d9310f7af5587e2498300"

  url "https://dl.blitz.gg/download/Blitz-#{version}.dmg"
  name "Blitz"
  homepage "https://blitz.gg/"

  livecheck do
    url "https://dl.blitz.gg/download/mac"
    strategy :header_match
  end

  auto_updates true

  app "Blitz.app"

  uninstall quit: "com.blitz.app"

  zap trash: [
    "~/Library/Application Support/Blitz",
    "~/Library/Caches/com.blitz.app.ShipIt",
    "~/Library/Cookies/com.blitz.app.binarycookies",
    "~/Library/Logs/Blitz",
    "~/Library/Preferences/com.blitz.app.plist",
    "~/Library/Saved Application State/com.blitz.app.savedState",
  ]
end
