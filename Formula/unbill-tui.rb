class UnbillTui < Formula
  desc "Unbill unbill-tui"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.3/unbill-tui-macos-aarch64.tar.gz"
      sha256 "73df7e37fadcbfe396ef57d3d3da9eb1ffaa852c8cbe30e54bfb9ddfc5388952"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.3/unbill-tui-linux-x86_64.tar.gz"
      sha256 "6876da96111074de7f8527b405a52cfd3ae15a2ad333be8a7cc6f7c91299346d"
    end
  end

  def install
    bin.install "unbill-tui"
  end
end
