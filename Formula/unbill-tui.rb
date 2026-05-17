class UnbillTui < Formula
  desc "Unbill unbill-tui"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.3/unbill-tui-macos-aarch64.tar.gz"
      sha256 "516eedad87e37054df00aa42c949619176370ecc1493b682e2d0fa6ba4d53ade"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.3/unbill-tui-linux-x86_64.tar.gz"
      sha256 "3822a9dcf454202faf6b218a0280589cee2917e370f510cb85579375d76e58ae"
    end
  end

  def install
    bin.install "unbill-tui"
  end
end
