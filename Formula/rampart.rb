class Rampart < Formula
  desc "Open-source policy firewall for AI coding agents"
  homepage "https://rampart.sh"
  version "0.9.9"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/peg/rampart/releases/download/v0.9.9/rampart_0.9.9_darwin_amd64.tar.gz"
      sha256 "706947f8b8e28f93680223c39b87d504f167edb347c2195ca85e99c1921f1683"
    end

    on_arm do
      url "https://github.com/peg/rampart/releases/download/v0.9.9/rampart_0.9.9_darwin_arm64.tar.gz"
      sha256 "8be03f1d1a807c887a8e0665145365d6e6bb768e7d41b32e4529ff0bf9c9056b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peg/rampart/releases/download/v0.9.9/rampart_0.9.9_linux_amd64.tar.gz"
      sha256 "afbbc4f1ccbc210fe779ebed707e24e957e1ab19b45802829b1f9c641bccad55"
    end

    on_arm do
      url "https://github.com/peg/rampart/releases/download/v0.9.9/rampart_0.9.9_linux_arm64.tar.gz"
      sha256 "b9f29c3fc2e9348ca4e50e0365adde9ae5e003c54196b15f45054225b919d306"
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
