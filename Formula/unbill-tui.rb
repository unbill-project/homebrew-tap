class UnbillTui < Formula
  desc "Unbill unbill-tui"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.7/unbill-tui-macos-aarch64.tar.gz"
      sha256 "9aa431ad92038d3a5dd531f4019c55f6e65e9466fa92b2c48979bd29ace27f4e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.7/unbill-tui-linux-x86_64.tar.gz"
      sha256 "12d1e49bbdaac992b82cf562940193b8e1457b50c4ddaa1b67a23c5dedc9db18"
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
