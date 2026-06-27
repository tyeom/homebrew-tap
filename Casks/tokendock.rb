cask "tokendock" do
  version "1.2.4"
  sha256 "229e2f1e1fc7c1127f6bf9e9cc3d96e3e923283f87196b5ef36f759109580ee1"

  url "https://github.com/tyeom/TokenDock-MacOS/releases/download/v#{version}/TokenDock-#{version}.zip"
  name "TokenDock"
  desc "Claude and Codex usage monitor in the menu bar"
  homepage "https://github.com/tyeom/TokenDock-MacOS"

  depends_on macos: :sonoma

  app "TokenDock.app"

  zap trash: "~/Library/Preferences/com.tokendock.macos.plist"
end
