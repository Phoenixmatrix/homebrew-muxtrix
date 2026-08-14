class Muxtrix < Formula
  desc "Native GPU terminal workspace for supervising coding agents"
  homepage "https://github.com/Phoenixmatrix/muxtrix"
  url "https://github.com/Phoenixmatrix/muxtrix/releases/download/v0.1.51/muxtrix-0.1.51-macos-arm64.tar.gz"
  version "0.1.51"
  sha256 "b9075db596c841a3d34ea1c96745d835ce9a39e83c928c9f6cabf60d65cebfa2"
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
