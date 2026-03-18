class Snare < Formula
  desc "Honeypot canaries for AI agents — detect compromise via fake credentials"
  homepage "https://snare.sh"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/peg/snare/releases/download/v0.1.3/snare_darwin_amd64.tar.gz"
      sha256 "20c732149d8a2d19830f34e27ba5b072c0dd6e674313633ab3c6049e5073ef18"
    end

    on_arm do
      url "https://github.com/peg/snare/releases/download/v0.1.3/snare_darwin_arm64.tar.gz"
      sha256 "ffdda84705e8fdef47c062266b6273378accddc59b98115173ce65b385b1f6c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peg/snare/releases/download/v0.1.3/snare_linux_amd64.tar.gz"
      sha256 "661a1be21ac1ffa4660b98b80c4c6838a93faa6915b94f8125e53fe6828a345b"
    end

    on_arm do
      url "https://github.com/peg/snare/releases/download/v0.1.3/snare_linux_arm64.tar.gz"
      sha256 "6e3b0e13ea2933fe9e7e97093cdecdafebf0f0c290109aa61cbe851392c1b037"
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
