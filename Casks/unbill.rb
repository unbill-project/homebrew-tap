cask "unbill" do
  version "0.0.8"
  sha256 "9652b16952aceb33ff2625a1367d1d2b7a8b4fe50f4adf9db9374d2542b13e05"

  url "https://github.com/unbill-project/unbill/releases/download/v0.0.8/unbill-macos-aarch64.dmg"
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
