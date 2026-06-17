cask "tokendock" do
  version "1.2.0"
  sha256 "0f18297466be3fa0b89b8d17b45923c2c2776e06f279002f8bc8576bd49b2cba"

  url "https://github.com/tyeom/TokenDock-MacOS/releases/download/v#{version}/TokenDock-#{version}.zip"
  name "TokenDock"
  desc "Claude and Codex usage monitor in the menu bar"
  homepage "https://github.com/tyeom/TokenDock-MacOS"

  depends_on macos: :sonoma

  app "TokenDock.app"

  zap trash: "~/Library/Preferences/com.tokendock.macos.plist"
end
