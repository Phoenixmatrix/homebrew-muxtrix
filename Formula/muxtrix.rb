class Muxtrix < Formula
  desc "Native GPU terminal workspace for supervising coding agents"
  homepage "https://github.com/Phoenixmatrix/muxtrix"
  url "https://github.com/Phoenixmatrix/muxtrix/releases/download/v0.1.58/muxtrix-0.1.58-macos-arm64.tar.gz"
  version "0.1.58"
  sha256 "8e04bbbfcb0d1758b70b5bee314974c8e6e299eeb8d19bda62a174376a28f968"
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
