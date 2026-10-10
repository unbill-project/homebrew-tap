class UnbillCli < Formula
  desc "Unbill unbill-cli"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.6/unbill-cli-macos-aarch64.tar.gz"
      sha256 "67ff6bbd598939c8f75d0e422822a744527ba61b74a05878a652157ec405dc08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.6/unbill-cli-linux-x86_64.tar.gz"
      sha256 "a9ae6ff82ace967650b38f2e8abc0a43a7bb1efe1b42f8bdd1fc7f00da61ece6"
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
