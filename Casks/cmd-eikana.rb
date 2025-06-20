cask "cmd-eikana" do
  version "2.2.4"
  sha256 "604a140bb91a34123aba5a1362521155da3c8e1fc61ee1c452123f36ee20742b"

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