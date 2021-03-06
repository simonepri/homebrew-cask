cask "moonlight" do
  version "2.2.0"
  sha256 "146578e5f0cff1165b9dabed8cdf8d2af4e342964b1bc1aa9b88d053bad70e8d"

  url "https://github.com/moonlight-stream/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}.dmg",
      verified: "github.com/moonlight-stream/moonlight-qt/"
  appcast "https://github.com/moonlight-stream/moonlight-qt/releases.atom"
  name "Moonlight"
  desc "GameStream client"
  homepage "https://moonlight-stream.org/"

  depends_on macos: ">= :sierra"

  app "Moonlight.app"
end
