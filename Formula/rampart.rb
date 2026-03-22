class Rampart < Formula
  desc "Open-source policy firewall for AI coding agents"
  homepage "https://rampart.sh"
  version "0.9.8"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/peg/rampart/releases/download/v0.9.8/rampart_0.9.8_darwin_amd64.tar.gz"
      sha256 "b26a9b4f375a5e5d92c00b3d4139e8a33eff5eb37ab31d6727e32e6f362de0ee"
    end

    on_arm do
      url "https://github.com/peg/rampart/releases/download/v0.9.8/rampart_0.9.8_darwin_arm64.tar.gz"
      sha256 "1f40337b8774dfb2aba73b896861937c40ebce05699963ade33d7e029f9f38c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peg/rampart/releases/download/v0.9.8/rampart_0.9.8_linux_amd64.tar.gz"
      sha256 "b355d442dc9ae9bab2ea1bc9d0cfaaee1422fa5251bf986c8644d78a42c07b1c"
    end

    on_arm do
      url "https://github.com/peg/rampart/releases/download/v0.9.8/rampart_0.9.8_linux_arm64.tar.gz"
      sha256 "b61970c240c311c139a2ac383502b6204f10345a629f9f1e8b759ad7d586bce7"
    end
  end

  def install
    bin.install "rampart"
  end

  def caveats
    <<~EOS
      To get started, run:
        rampart setup claude-code                    # Claude Code
        rampart setup openclaw --patch-tools         # OpenClaw
        rampart quickstart                           # Auto-detect your agent

      Then verify everything is working:
        rampart doctor
    EOS
  end

  test do
    system "#{bin}/rampart", "version"
  end
end
