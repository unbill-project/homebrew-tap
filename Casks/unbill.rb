cask "unbill" do
  version "0.0.9"
  sha256 "1490f2375ca8bcbc365eafe4e63aaf0aa43c16f1b822eb389ae5d1a5d7db9a39"

  url "https://github.com/unbill-project/unbill/releases/download/v0.0.9/unbill-macos-aarch64.dmg"
  name "Unbill"
  desc "Split bills with friends — offline-first, peer-to-peer"
  homepage "https://github.com/unbill-project/unbill"

  depends_on formula: "unbill-project/tap/unbill-daemon"

  app "Unbill.app"

  caveats <<~EOS
    A running unbill-daemon is required. If your daemon is already managed by
    Nix or another installation, keep using it and do not start a second service.
    Otherwise, start the Homebrew service with:
      brew services start unbill-daemon
  EOS
end
