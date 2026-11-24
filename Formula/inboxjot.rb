class Inboxjot < Formula
  desc "Command-line interface for the Inboxjot email API"
  homepage "https://inboxjot.com/docs/cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@inboxjot/cli-darwin-arm64/-/cli-darwin-arm64-0.1.0.tgz"
      sha256 "143a0669a722257261925d29abe1b8b333ee0a60ebc5bd795bccb2042540129f"
    end
    on_intel do
      url "https://registry.npmjs.org/@inboxjot/cli-darwin-x64/-/cli-darwin-x64-0.1.0.tgz"
      sha256 "e2bce1f958d30fb5ff89c66996fda2080cee923d28efbbbfbf1ccb0259f8284b"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@inboxjot/cli-linux-arm64/-/cli-linux-arm64-0.1.0.tgz"
      sha256 "3402a9b8d5b481a89e76d0f4f65e0b0a2d0003b28b5fc27b1edff7794d176863"
    end
    on_intel do
      url "https://registry.npmjs.org/@inboxjot/cli-linux-x64/-/cli-linux-x64-0.1.0.tgz"
      sha256 "6a74f422f69b7162ab7fd2aaadaea11c5b7928c639ffa65e618809961d95707b"
    end
  end

  def install
    bin.install "bin/inboxjot"
    bin.install_symlink "inboxjot" => "ij"
    generate_completions_from_executable(bin/"inboxjot", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inboxjot --version")
  end
end
