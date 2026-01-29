# Homebrew Tap for Donna Desktop

This tap contains the Homebrew Cask formula for [Donna Desktop](https://github.com/camerhann/donna-desktop).

## Installation

```bash
brew tap camerhann/donna
brew install --cask donna-desktop
```

## What is Donna Desktop?

An AI-powered terminal app with personality. Features:

- **Agent Personalities**: Donna, Jarvis, Claude, Gemini
- **Agent Arena**: Race Claude vs Gemini on the same task
- **Session Management**: Pin sessions, context sidebar
- **Terminal Power Features**: Command palette, workflows

## Requirements

- macOS 12+ (Monterey or later)
- Apple Silicon (arm64)
- [Claude Code CLI](https://www.npmjs.com/package/@anthropic-ai/claude-code) for AI features

### Installing Claude Code

```bash
npm install -g @anthropic-ai/claude-code
```

You'll need an [Anthropic API key](https://console.anthropic.com/) or Claude Pro subscription.

## Updating

```bash
brew upgrade --cask donna-desktop
```

## Uninstalling

```bash
brew uninstall --cask donna-desktop
```
