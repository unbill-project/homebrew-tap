class UnbillTui < Formula
  desc "Unbill unbill-tui"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.5/unbill-tui-macos-aarch64.tar.gz"
      sha256 "cea7df35f21950820c211b46d339bbbc9ab3137b3dc83418016ae69360d025f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.5/unbill-tui-linux-x86_64.tar.gz"
      sha256 "b699f64328324d0edea26e712d8ac7ab9ed53f374a9e2e58a85b8aa5e19ae7e1"
    end
  end

  def install
    bin.install "unbill-tui"
  end
end
