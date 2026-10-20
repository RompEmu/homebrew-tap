cask "romp" do
  version "0.18.1"
  sha256 "72947b67338873f028407964987e8ef0d0a6513eb0f1205445402a2c255df894"

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
