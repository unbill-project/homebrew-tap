class UnbillDaemon < Formula
  desc "Unbill unbill-daemon"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.7/unbill-daemon-macos-aarch64.tar.gz"
      sha256 "8782180e533844bf6596f8b565fab2626a9ec2e0242646755a8120a48b7083fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.7/unbill-daemon-linux-x86_64.tar.gz"
      sha256 "3a16aefa2f417c740814c55ae79009fa6cc915407f52d9fc0e48d1368cd67c68"
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
