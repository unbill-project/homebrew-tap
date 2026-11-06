cask "unbill" do
  version "0.0.10"
  sha256 "bd8ad477e055edf4e832ca5b1390040a71515c5bbddeeb8219f9ba136fce4009"

  url "https://github.com/unbill-project/unbill/releases/download/v0.0.10/unbill-macos-aarch64.dmg"
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
