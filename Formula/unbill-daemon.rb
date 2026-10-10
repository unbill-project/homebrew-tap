class UnbillDaemon < Formula
  desc "Unbill unbill-daemon"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.5/unbill-daemon-macos-aarch64.tar.gz"
      sha256 "924f5d8420ae38bb6fd0481637924d6104ae21b2f2a2f40798b47c669fece156"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.5/unbill-daemon-linux-x86_64.tar.gz"
      sha256 "434262391f3b727fe55c9bd6bed733e6df19104e4e021bab15ab5c210305a1a9"
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
end
