class Inboxjot < Formula
  desc "Command-line interface for the Inboxjot email API"
  homepage "https://inboxjot.com/docs/cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@inboxjot/cli-darwin-arm64/-/cli-darwin-arm64-0.1.1.tgz"
      sha256 "b5f904454c52e630926578e8be89e28031152739e97c9594547c7aa8dd06c765"
    end
    on_intel do
      url "https://registry.npmjs.org/@inboxjot/cli-darwin-x64/-/cli-darwin-x64-0.1.1.tgz"
      sha256 "fc226acae6cdfe3d462564f7dd974cab804059b6834c61ed22776e68650d980e"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@inboxjot/cli-linux-arm64/-/cli-linux-arm64-0.1.1.tgz"
      sha256 "6290bb679280baa81ae71090d2b40915a5fc216e849375b083e4ff6b670fa942"
    end
    on_intel do
      url "https://registry.npmjs.org/@inboxjot/cli-linux-x64/-/cli-linux-x64-0.1.1.tgz"
      sha256 "fbafadd7d0f67ef6df84415bac2fae48342bb0d6ed0235894f00ef3a472471f2"
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
