cask "romp" do
  version "0.6.0"
  sha256 "58d793762d87a2275c38046e856470ee80323b212f8828403db63d0c8bfd54a1"

  url "https://github.com/RompEmu/RompEmu/releases/download/v#{version}/Romp-#{version}-macos-arm64.zip"
  name "Romp"
  desc "Play the games in your RomM library"
  homepage "https://github.com/RompEmu/RompEmu"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Romp.app"

  zap trash: "~/Library/Application Support/Romp"
end
