class Muxtrix < Formula
  desc "Native GPU terminal workspace for supervising coding agents"
  homepage "https://github.com/Phoenixmatrix/muxtrix"
  url "https://github.com/Phoenixmatrix/muxtrix/releases/download/v0.1.49/muxtrix-0.1.49-macos-arm64.tar.gz"
  version "0.1.49"
  sha256 "0a68b6a5d0d9dcecab465ca4154e1a462b49ed3a6f52fa12ff9ee691e1e81a78"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :monterey

  def install
    bin.install "muxtrix", "muxtrixctl"
    prefix.install "THIRD_PARTY_NOTICES.md"
  end

  test do
    output = shell_output("#{bin}/muxtrixctl 2>&1", 1)
    assert_match "usage: muxtrixctl", output
  end
end
