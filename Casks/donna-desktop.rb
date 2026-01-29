cask "donna-desktop" do
  version "0.1.0"
  sha256 "2b1a47dcab04ab6cf48b6522f91a24fd56f294cfd89370220300f9d947665aaa"

  url "https://github.com/camerhann/donna-desktop/releases/download/v#{version}/donna-desktop-#{version}-arm64.dmg"
  name "Donna Desktop"
  desc "AI-powered terminal with personality - Claude, Gemini, and custom agents"
  homepage "https://github.com/camerhann/donna-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Donna Desktop.app"

  postflight do
    # Remove quarantine attribute to avoid Gatekeeper warning
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Donna Desktop.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Donna Desktop",
    "~/Library/Preferences/com.donna.desktop.plist",
    "~/Library/Saved Application State/com.donna.desktop.savedState",
  ]

  caveats <<~EOS
    On first launch, right-click the app and select "Open" to bypass Gatekeeper.

    Donna Desktop requires Claude Code CLI for AI features:
      npm install -g @anthropic-ai/claude-code

    You'll also need an Anthropic API key or Claude Pro subscription.
    See: https://console.anthropic.com/
  EOS
end
