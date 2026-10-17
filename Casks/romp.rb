cask "romp" do
  version "0.16.0"
  sha256 "a8f857639af3cc4098ad16054f3b2b81e98bac8cd1bced3e9d2f8eef60dc3b04"

  url "https://github.com/RompEmu/RomP/releases/download/v#{version}/RomP-#{version}-macos-arm64.zip"
  name "RomP"
  desc "Play the games in your RomM library"
  homepage "https://github.com/RompEmu/RomP"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "RomP.app"

  zap trash: "~/Library/Application Support/Romp"
end
