class UnbillCli < Formula
  desc "Unbill unbill-cli"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.4/unbill-cli-macos-aarch64.tar.gz"
      sha256 "13e8dc99e143acaccb65a7be521aeb420db70568d4a80d4f545ffc8e35667e00"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.4/unbill-cli-linux-x86_64.tar.gz"
      sha256 "20403b6951e975fdd22719feaec77111073b5d0f0cee31552990c092518104bb"
    end
  end

  def install
    bin.install "unbill-cli"
  end
end
