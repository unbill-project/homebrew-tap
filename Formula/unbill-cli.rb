class UnbillCli < Formula
  desc "Unbill unbill-cli"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.7/unbill-cli-macos-aarch64.tar.gz"
      sha256 "17b96810c18c0b19c72944642057671c29eccad218df4315e3d3928c89731fc9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.7/unbill-cli-linux-x86_64.tar.gz"
      sha256 "5465ba9ce81bf2c73596d960567ece532c3746274178feb7807188e4a9c4f098"
    end
  end

  def install
    bin.install "unbill-cli"
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
