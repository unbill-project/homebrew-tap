class UnbillDaemon < Formula
  desc "Unbill unbill-daemon"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.8/unbill-daemon-macos-aarch64.tar.gz"
      sha256 "b9389b303f29f2bc187b377ade59616bf398d8853ff15847279388b6c102b169"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.8/unbill-daemon-linux-x86_64.tar.gz"
      sha256 "a8b386f4ac4fac4a1cf757a83aff8cd72b854f344d22894a9e09b8da5bceb641"
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
