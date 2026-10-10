class UnbillDaemon < Formula
  desc "Unbill unbill-daemon"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.6/unbill-daemon-macos-aarch64.tar.gz"
      sha256 "4a7caaaa05fc30e4dfa307a4b81dab88c4b66834c3d3e015eefc9a47e3921b88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.6/unbill-daemon-linux-x86_64.tar.gz"
      sha256 "3ca547ca540a8ffaaa752bafadbe65e172cf5be07f805eed56bccc5d53125ba1"
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
