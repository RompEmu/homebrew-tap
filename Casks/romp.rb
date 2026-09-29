cask "romp" do
  version "0.5.0"
  sha256 "57a23616e51dd4f8759080375a921bea9788fe93a87090e50165d064d483fd30"

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
