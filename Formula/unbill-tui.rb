class UnbillTui < Formula
  desc "Unbill unbill-tui"
  homepage "https://github.com/unbill-project/unbill"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.3/unbill-tui-macos-aarch64.tar.gz"
      sha256 "995f846dd8428f648bfd06e88ef1916b5962c3627e2bd762bf56521ff049ee6a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/unbill-project/unbill/releases/download/v0.0.3/unbill-tui-linux-x86_64.tar.gz"
      sha256 "9534ea1dde3525f540b026b15520cdef60cc4ca214db10531cce062eb7dbb0c3"
    end
  end

  def install
    bin.install "unbill-tui"
  end
end
