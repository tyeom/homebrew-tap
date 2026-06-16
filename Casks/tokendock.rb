cask "tokendock" do
  version "1.1.3"
  sha256 "1cab7927d3676f53fa0347340860a9f87fcfa64a407f06c4950f155e7cf25012"

  url "https://github.com/tyeom/TokenDock-MacOS/releases/download/v#{version}/TokenDock-#{version}.zip"
  name "TokenDock"
  desc "Claude and Codex usage monitor in the menu bar"
  homepage "https://github.com/tyeom/TokenDock-MacOS"

  depends_on macos: :sonoma

  app "TokenDock.app"

  zap trash: "~/Library/Preferences/com.tokendock.macos.plist"
end
