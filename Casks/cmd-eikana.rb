cask "cmd-eikana" do
  version "2.2.6"
  sha256 "398435f847cf5bb4fdccf3838f79889106e8fddd8620b2ed39b46d90ef6a78d8"

  url "https://github.com/yukifoo/cmd-eikana/releases/download/v#{version}/cmd-eikana.dmg"
  name "cmd-eikana"
  name "⌘英かな"
  desc "Switch between alphanumeric and kana with left/right command keys"
  homepage "https://github.com/yukifoo/cmd-eikana"

  auto_updates false

  app "⌘英かな.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/⌘英かな.app"],
                   sudo: false
  end

  uninstall quit: "io.github.imasanari.cmd-eikana"

  zap trash: [
    "~/Library/Preferences/io.github.imasanari.cmd-eikana.plist",
  ]
end