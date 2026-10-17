cask "romp" do
  version "0.16.0"
  sha256 "ad52936d5d6bfd23596f82b13b4531db0941b40e5bc55e04d864ba5d7df02146"

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
