class UnbillDaemon < Formula
  desc "Unbill unbill-daemon"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.10/unbill-daemon-macos-aarch64.tar.gz"
      sha256 "5031a0ff778f031e54f3f2d80fda5f78f913ab61f5c2eaa2ba5cc289977f2d26"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.10/unbill-daemon-linux-x86_64.tar.gz"
      sha256 "20be39a1f9f5bd1332285c7d2fa60bc04c183ef20d2da767083fb3e695ee8b0b"
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
