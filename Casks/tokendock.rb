cask "tokendock" do
  version "1.1.0"
  sha256 "25f83df350cc222a5f3969884f580d9728e852e125f51e8d6f12e44e71389882"

  url "https://github.com/tyeom/TokenDock-MacOS/releases/download/v#{version}/TokenDock-#{version}.zip"
  name "TokenDock"
  desc "Claude and Codex usage monitor in the menu bar"
  homepage "https://github.com/tyeom/TokenDock-MacOS"

  depends_on macos: :sonoma

  app "TokenDock.app"

  # The app is ad-hoc signed (not notarized). Drop the quarantine flag after
  # install so Gatekeeper lets it launch without a right-click "Open".
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/TokenDock.app"]
  end

  zap trash: "~/Library/Preferences/com.tokendock.macos.plist"
end
