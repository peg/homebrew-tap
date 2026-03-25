class Snare < Formula
  desc "Honeypot canaries for AI agents — detect compromise via fake credentials"
  homepage "https://snare.sh"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/peg/snare/releases/download/v0.1.4/snare_darwin_amd64.tar.gz"
      sha256 "abd3aa15225682debf7d263d6b8bb86d97a1e2f85ba4c386c9d52ba40d59c944"
    end

    on_arm do
      url "https://github.com/peg/snare/releases/download/v0.1.4/snare_darwin_arm64.tar.gz"
      sha256 "d4157516c8cd6c3de227e657ef46f1c79ca5b72cdc80fcad980a7c9066c95d4b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peg/snare/releases/download/v0.1.4/snare_linux_amd64.tar.gz"
      sha256 "6dee62ccaf21d03dad09bab4563beb76d71f66875a962aa61df49adb0223f08c"
    end

    on_arm do
      url "https://github.com/peg/snare/releases/download/v0.1.4/snare_linux_arm64.tar.gz"
      sha256 "6a96fff3569ce56645b70f6f92f99868a80e600adfff409b9307f5d68a0e9436"
    end
  end

  def install
    bin.install "snare"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snare --version", 0)
  rescue
    system "#{bin}/snare", "--help"
  end
end

