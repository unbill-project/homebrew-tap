cask "unbill" do
  version "0.0.7"
  sha256 "22048a86d60b254386d703679cbba9034c56f022c328d5354083ca18006e9a8a"

  url "https://github.com/unbill-project/unbill/releases/download/v0.0.7/unbill-macos-aarch64.dmg"
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
