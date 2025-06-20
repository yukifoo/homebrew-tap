cask "cmd-eikana" do
  version "2.2.5"
  sha256 "ed6fe366d20ddcc0a00b7bea06f2321b664369f20dfee1888e76be5e7b367b12"

  url "https://github.com/yukifoo/cmd-eikana/releases/download/v#{version}/cmd-eikana.dmg"
  name "cmd-eikana"
  name "⌘英かな"
  desc "Switch between alphanumeric and kana with left/right command keys"
  homepage "https://github.com/yukifoo/cmd-eikana"

  auto_updates false

  app "⌘英かな.app"

  uninstall quit: "io.github.imasanari.cmd-eikana"

  zap trash: [
    "~/Library/Preferences/io.github.imasanari.cmd-eikana.plist",
  ]
end