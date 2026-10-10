cask "unbill" do
  version "0.0.6"
  sha256 "d5362cdb5d78c610204c50b5307936beb0dc54c911d120c6b91580af39977e6c"

  url "https://github.com/unbill-project/unbill/releases/download/v0.0.6/unbill-macos-aarch64.dmg"
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
