class UnbillCli < Formula
  desc "Unbill unbill-cli"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.3/unbill-cli-macos-aarch64.tar.gz"
      sha256 "a202c9d185cc2563075256d8c0820bde39c1190696119e5916c431eb5da090a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.3/unbill-cli-linux-x86_64.tar.gz"
      sha256 "b3ff036cdb33bde8cc174fdc6fea8fecaff489507a94bfb4a9182fd2e137f8b7"
    end
  end

  def install
    bin.install "unbill-cli"
  end
end
