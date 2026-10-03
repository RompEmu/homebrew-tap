cask "romp" do
  version "0.10.0"
  sha256 "9a8c471915e1bfacfa509b3ae80f648a1b2929e70bba2e30606ea4ad9499f534"

  url "https://github.com/RompEmu/RompEmu/releases/download/v#{version}/RomP-#{version}-macos-arm64.zip"
  name "RomP"
  desc "Play the games in your RomM library"
  homepage "https://github.com/RompEmu/RompEmu"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "RomP.app"

  zap trash: "~/Library/Application Support/Romp"
end
