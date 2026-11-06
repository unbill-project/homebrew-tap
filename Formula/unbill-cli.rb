class UnbillCli < Formula
  desc "Unbill unbill-cli"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.10/unbill-cli-macos-aarch64.tar.gz"
      sha256 "2004dbebb24eb9f12873482c2371145f8394c5e417eb8e292e2582da4fc2d002"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.10/unbill-cli-linux-x86_64.tar.gz"
      sha256 "b9e8c59cd3e3b0c1894eb9246da7695453fb82deae9b26513b503da46895f6a9"
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
