class Muxtrix < Formula
  desc "Native GPU terminal workspace for supervising coding agents"
  homepage "https://github.com/Phoenixmatrix/muxtrix"
  url "https://github.com/Phoenixmatrix/muxtrix/releases/download/v0.1.69/muxtrix-0.1.69-macos-arm64.tar.gz"
  version "0.1.69"
  sha256 "271e5b1aaa0eac15f29968850f7d04837a06d80f16c149a692e62c63c3a94d6c"
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
