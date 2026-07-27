class Snare < Formula
  desc "Honeypot canaries for AI agents — detect compromise via fake credentials"
  homepage "https://snare.sh"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/peg/snare/releases/download/v0.5.0/snare_darwin_amd64.tar.gz"
      sha256 "1c9c8ca7f9d6cbf50ae84bdd7de796f26bd990f73775c1086b8dc05653afb045"
    end

    on_arm do
      url "https://github.com/peg/snare/releases/download/v0.5.0/snare_darwin_arm64.tar.gz"
      sha256 "59e2ab52dc36acf81b4cbc7709a2547fa77e73f4f40b820c83e32b61f260945d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/peg/snare/releases/download/v0.5.0/snare_linux_amd64.tar.gz"
      sha256 "46a1fa895ae8e6eda151719f7e95a03734ba91c4424149c785111c5595f56004"
    end

    on_arm do
      url "https://github.com/peg/snare/releases/download/v0.5.0/snare_linux_arm64.tar.gz"
      sha256 "50a484e9a95e570d9cf06fdfb5df73770fa5d84941e8f237eb8f20ef88fdde48"
    end
  end

  def install
    bin.install "snare"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snare --version")
  end
end
