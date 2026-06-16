cask "tokendock" do
  version "1.1.1"
  sha256 "bc43ead7033ff33e3f07a166a3b0467881692c230c76d5efb4b45d025d534728"

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
