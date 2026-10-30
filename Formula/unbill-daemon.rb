class UnbillDaemon < Formula
  desc "Unbill unbill-daemon"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.9/unbill-daemon-macos-aarch64.tar.gz"
      sha256 "7f29984246c409e5553ac5cab1e97c8bb81fcda0072efad4715511d627c2748a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.9/unbill-daemon-linux-x86_64.tar.gz"
      sha256 "7e2ff9bbec9cc2097d10e1b5fd5716201c5f1c8f33a66764c016ffc955ebecfb"
    end
  end

  def install
    bin.install "unbill-daemon"
  end
  service do
    run opt_bin/"unbill-daemon"
    keep_alive true
    log_path var/"log/unbill-daemon.log"
    error_log_path var/"log/unbill-daemon.log"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unbill-daemon --version")
  end
end
