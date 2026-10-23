class UnbillCli < Formula
  desc "Unbill unbill-cli"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.8/unbill-cli-macos-aarch64.tar.gz"
      sha256 "b56d075fe6950df0d7296f510fca1d6beb512a290ffce3b78a4efeef9165c9ab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.8/unbill-cli-linux-x86_64.tar.gz"
      sha256 "27c9b704e2b4d8a6c6b6ae12023088c987443f711632caabb124b3148808c8ef"
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
