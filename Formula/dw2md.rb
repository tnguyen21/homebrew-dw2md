class Dw2md < Formula
  desc "Crawl a DeepWiki repository and compile all pages into markdown"
  homepage "https://github.com/nwyin/dw2md"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nwyin/dw2md/releases/download/v0.2.3/dw2md-macos-aarch64"
      sha256 "b3e978d3cc8ae3cf08091af5a72aaab70d293f0dac5107e82334e0425ac20c6a"
    else
      url "https://github.com/nwyin/dw2md/releases/download/v0.2.3/dw2md-macos-x86_64"
      sha256 "b18a76ea0226a0d2c1ea6af6077a375b4eeddab576a490fc549e21cc2f118675"
    end
  end

  on_linux do
    url "https://github.com/nwyin/dw2md/releases/download/v0.2.3/dw2md-linux-x86_64-musl"
    sha256 "cc8c4c2434c1be2b3679f214607f615435e53e19660db4bfa2ade494b0df153f"
  end

  def install
    bin.install stable.url.split("/").last => "dw2md"
  end

  test do
    assert_match "dw2md", shell_output("#{bin}/dw2md --version")
  end
end
