cask "unbill" do
  version "0.0.5"
  sha256 "a79e474d05d7791673fa616db20e047ab4e6eee2119f717744a203dcc28d475b"

  url "https://github.com/unbill-project/unbill/releases/download/v0.0.5/unbill-macos-aarch64.dmg"
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
