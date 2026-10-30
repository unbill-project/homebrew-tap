class UnbillTui < Formula
  desc "Unbill unbill-tui"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.9/unbill-tui-macos-aarch64.tar.gz"
      sha256 "3e96afa9b00d507c2c16602d374ec61e4d52a9833404efaedc97f67d10989081"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.9/unbill-tui-linux-x86_64.tar.gz"
      sha256 "1561a577920eb0b8ef81e1d93a47b459ae23613dc9e29940c63142398bed7386"
    end
  end

  def install
    bin.install "unbill-tui"
  end
  depends_on "unbill-project/tap/unbill-daemon"

  def caveats
    <<~EOS
      A running unbill-daemon is required. If your daemon is already managed by
      Nix or another installation, keep using it and do not start a second service.
      Otherwise, start the Homebrew service with:
        brew services start unbill-daemon
    EOS
  end
end
