cask "tokendock" do
  version "1.2.3"
  sha256 "2b0d298f7e1d5a23c5d20829037d944b639621d7d12439f0d14c52b7ca37303e"

  url "https://github.com/tyeom/TokenDock-MacOS/releases/download/v#{version}/TokenDock-#{version}.zip"
  name "TokenDock"
  desc "Claude and Codex usage monitor in the menu bar"
  homepage "https://github.com/tyeom/TokenDock-MacOS"

  depends_on macos: :sonoma

  app "TokenDock.app"

  zap trash: "~/Library/Preferences/com.tokendock.macos.plist"
end
