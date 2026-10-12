cask "romp" do
  version "0.14.0"
  sha256 "c215ed356aeb63969b3dc7b55af84ac41de6a97fea974a2dd3bc5b461bde4310"

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
