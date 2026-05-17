class UnbillCli < Formula
  desc "Unbill unbill-cli"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.3/unbill-cli-macos-aarch64.tar.gz"
      sha256 "2ec21ec12c89f30b7977ccf7044dd2753cf1eff8b0c8175d7b46ce05b1614153"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.3/unbill-cli-linux-x86_64.tar.gz"
      sha256 "87207c786d4c82d750a0e0173bc0d294737452a62ae35907efe5387542b408af"
    end
  end

  def install
    bin.install "unbill-cli"
  end
end
