class Snare < Formula
  desc "Honeypot canaries for AI agents — detect compromise via fake credentials"
  homepage "https://snare.sh"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/peg/snare/releases/download/v0.1.1/snare_darwin_amd64.tar.gz"
      sha256 "524da4e0882690d8277de4fd17961b35412be6a0a0da1b3797fc041f302ae73a"
    end

    on_arm do
      url "https://github.com/peg/snare/releases/download/v0.1.1/snare_darwin_arm64.tar.gz"
      sha256 "76c9cbb565f568f145ac5b1e355b63b750b349fee3c2edd3ad21843285556067"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peg/snare/releases/download/v0.1.1/snare_linux_amd64.tar.gz"
      sha256 "f8c01056298e45dd629d2501b46a39a735572bedb5159d1ecdc87ce302a0845f"
    end

    on_arm do
      url "https://github.com/peg/snare/releases/download/v0.1.1/snare_linux_arm64.tar.gz"
      sha256 "842df26e2366058312cbbf6afd549729eaed62c0d9570f9889251dbcbf385274"
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
