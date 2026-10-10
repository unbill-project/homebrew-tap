class UnbillCli < Formula
  desc "Unbill unbill-cli"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.5/unbill-cli-macos-aarch64.tar.gz"
      sha256 "d586ae951ffdbb01884d4371b6c533663df74d360775611ffb6d4ae3a9683eba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.5/unbill-cli-linux-x86_64.tar.gz"
      sha256 "68ca79c9e3d50d9945cb7510d2e9a837b34b17cb1a57f6428cea4cb03bc35b51"
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
