cask "romp" do
  version "0.9.0"
  sha256 "a2d311c5808e07be3d877d76405ab4c671943334c1ec845c7892e506b73ae591"

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
