class Rampart < Formula
  desc "Open-source policy firewall for AI coding agents"
  homepage "https://rampart.sh"
  version "0.9.7"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/peg/rampart/releases/download/v0.9.7/rampart_0.9.7_darwin_amd64.tar.gz"
      sha256 "ff8333e00b62f8e3c2c35f1a716230b2e8efbf3093874f6a338158207e38d16b"
    end

    on_arm do
      url "https://github.com/peg/rampart/releases/download/v0.9.7/rampart_0.9.7_darwin_arm64.tar.gz"
      sha256 "7092fa2ec644aae779e5ead3b26f372c1c459335ab163902f1d8aa76b609f767"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peg/rampart/releases/download/v0.9.7/rampart_0.9.7_linux_amd64.tar.gz"
      sha256 "692ca5e44581f8080b846be0c63971d7dddd229892869bc1633fa1818cef61ee"
    end

    on_arm do
      url "https://github.com/peg/rampart/releases/download/v0.9.7/rampart_0.9.7_linux_arm64.tar.gz"
      sha256 "fec48fe3be47eb0db756e28dcfdc1f9209500a36871b40011a457704096c7703"
    end
  end

  def install
    bin.install "rampart"
  end

  def caveats
    <<~EOS
      To get started, run:
        rampart setup claude-code    # Claude Code
        rampart setup openclaw --patch-tools  # OpenClaw
        rampart quickstart           # Auto-detect your agent

      Then verify everything is working:
        rampart doctor
    EOS
  end

  test do
    system "#{bin}/rampart", "version"
  end
end
