class UnbillTui < Formula
  desc "Unbill unbill-tui"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.8/unbill-tui-macos-aarch64.tar.gz"
      sha256 "9b1875083d31f03c9b0195f7664bdfe4e245ae073b061c990a88ad9408ca625b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.8/unbill-tui-linux-x86_64.tar.gz"
      sha256 "188fd5dfb7e27965f5db466e2e231ad1747eb17fdc42797eb7c5831a41e02ced"
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
