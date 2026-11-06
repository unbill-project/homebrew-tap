class UnbillTui < Formula
  desc "Unbill unbill-tui"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.10/unbill-tui-macos-aarch64.tar.gz"
      sha256 "de4912d4bdd4b128878ca541fa7300749d86d5c0f03b67dd9203dfe3872ac021"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.10/unbill-tui-linux-x86_64.tar.gz"
      sha256 "7d8057062b262b4cfb91787c896ae4145287ccd3102b3a30f30fc9a89c0e9a29"
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
