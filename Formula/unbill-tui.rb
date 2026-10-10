class UnbillTui < Formula
  desc "Unbill unbill-tui"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.6/unbill-tui-macos-aarch64.tar.gz"
      sha256 "bc790f1ce7e10ad0fce5244af53335aaac31c0eb047e9c696bc6de47ce2e0f39"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.6/unbill-tui-linux-x86_64.tar.gz"
      sha256 "0c96052e0e3bfec6f997bfd60fd889d40015375a78bd490a8b0328d8194c9b61"
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
