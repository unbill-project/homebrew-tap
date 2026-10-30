class UnbillCli < Formula
  desc "Unbill unbill-cli"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.9/unbill-cli-macos-aarch64.tar.gz"
      sha256 "9783e7caefde3e200cbc1ab1a126c0ef775b62724111ceba06742ec84919785c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.9/unbill-cli-linux-x86_64.tar.gz"
      sha256 "0c9dcee29e0b37a6c04dd44da1bb9274bbf86fda55a497b9743b6082db24b51f"
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
