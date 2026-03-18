class Rampart < Formula
  desc "Open-source policy firewall for AI coding agents"
  homepage "https://rampart.sh"
  version "0.9.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/peg/rampart/releases/download/v0.9.5/rampart_0.9.5_darwin_amd64.tar.gz"
      sha256 "73f163037a415980eabe520ee160b2da54660ee6baaa04d25e4b160eb7d173ba"
    end

    on_arm do
      url "https://github.com/peg/rampart/releases/download/v0.9.5/rampart_0.9.5_darwin_arm64.tar.gz"
      sha256 "39e11bef5cf3ed2d9dba12ff6c30cdc550af6a6653fe59de929cc5c744ba7779"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peg/rampart/releases/download/v0.9.5/rampart_0.9.5_linux_amd64.tar.gz"
      sha256 "43cf78d6163c33f40ef8d87d63a4d4d10cfa85214d207ab03ed10db5f2e8c8b7"
    end

    on_arm do
      url "https://github.com/peg/rampart/releases/download/v0.9.5/rampart_0.9.5_linux_arm64.tar.gz"
      sha256 "4d142f0745fd6df128be2278e72c7a1adf06cc1a1e3a79ec27f03efb23c07213"
    end
  end

  def install
    bin.install "rampart"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rampart version", 0)
  rescue
    system "#{bin}/rampart", "--help"
  end
end
