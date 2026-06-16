cask "tokendock" do
  version "1.0.0"
  sha256 "757ff7211b5b4c2d4a11a1e00fed4668c19d1f37c9a56d770486f621e8cde24f"

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
