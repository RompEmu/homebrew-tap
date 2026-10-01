cask "romp" do
  version "0.8.0"
  sha256 "1a60d957cd662bd86f71daf75eb133dccfff926a34a6f7da9cfcde645561f964"

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
