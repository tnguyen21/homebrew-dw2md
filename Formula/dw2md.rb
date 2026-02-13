class Dw2md < Formula
  desc "Crawl a DeepWiki repository and compile all pages into markdown"
  homepage "https://github.com/tnguyen21/dw2md"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tnguyen21/dw2md/releases/download/v0.2.1/dw2md-macos-aarch64"
      sha256 "b75475d5e61882dc48789311a71a7a9c3a37b50ba0e0f1c6c7b21374361ff4a8"
    else
      url "https://github.com/tnguyen21/dw2md/releases/download/v0.2.1/dw2md-macos-x86_64"
      sha256 "c95389501df59c9890f323d3b8a9170670066ad717e977bcce647a2476564866"
    end
  end

  on_linux do
    url "https://github.com/tnguyen21/dw2md/releases/download/v0.2.1/dw2md-linux-x86_64-musl"
    sha256 "59e861daac87e056f7a6f48498c01cdcfc8b435c417426dc600ef80425dc942d"
  end

  def install
    bin.install stable.url.split("/").last => "dw2md"
  end

  test do
    assert_match "dw2md", shell_output("#{bin}/dw2md --version")
  end
end
