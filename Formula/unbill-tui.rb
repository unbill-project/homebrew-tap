class UnbillTui < Formula
  desc "Unbill unbill-tui"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.4/unbill-tui-macos-aarch64.tar.gz"
      sha256 "25fb0c811066d02f487c5e398c0651f0d1d036c73d5c6286a119a6184ccf5120"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.4/unbill-tui-linux-x86_64.tar.gz"
      sha256 "a7c7872e2e02698e57363a90ad66fe7273f065c9734d892f0dfb4f7d10ada09d"
    end
  end

  def install
    bin.install "unbill-tui"
  end
end
