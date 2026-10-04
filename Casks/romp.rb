cask "romp" do
  version "0.11.0"
  sha256 "8b3f5cdedb8ddafa84d973eef6e48dea3ce3f332edcd0c41709a4775d9e2f5f9"

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
