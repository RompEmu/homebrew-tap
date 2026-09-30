cask "romp" do
  version "0.7.0"
  sha256 "394bf6cb6c25e65ceb73ae74b29a6062c52a3a5197a4027d2c70387b8aa184e9"

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
