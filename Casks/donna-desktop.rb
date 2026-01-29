cask "donna-desktop" do
  version "0.1.0"
  sha256 "6261e8e658a2070171bc464ef932deb7167eda1a55dd8c1a0c6cf29c696def3e"

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

  zap trash: [
    "~/Library/Application Support/Donna Desktop",
    "~/Library/Preferences/com.donna.desktop.plist",
    "~/Library/Saved Application State/com.donna.desktop.savedState",
  ]

  caveats <<~EOS
    Donna Desktop requires Claude Code CLI for AI features:
      npm install -g @anthropic-ai/claude-code

    You'll also need an Anthropic API key or Claude Pro subscription.
    See: https://console.anthropic.com/
  EOS
end
