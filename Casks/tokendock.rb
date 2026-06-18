cask "tokendock" do
  version "1.2.2"
  sha256 "9d22ee53fc83b43ff27b4100ec6293a190b47bcf4c1cff0fa09236a38a3b5bf4"

  url "https://github.com/tyeom/TokenDock-MacOS/releases/download/v#{version}/TokenDock-#{version}.zip"
  name "TokenDock"
  desc "Claude and Codex usage monitor in the menu bar"
  homepage "https://github.com/tyeom/TokenDock-MacOS"

  depends_on macos: :sonoma

  app "TokenDock.app"

  zap trash: "~/Library/Preferences/com.tokendock.macos.plist"
end
