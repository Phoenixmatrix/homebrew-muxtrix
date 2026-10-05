class Muxtrix < Formula
  desc "Native GPU terminal workspace for supervising coding agents"
  homepage "https://github.com/Phoenixmatrix/muxtrix"
  url "https://github.com/Phoenixmatrix/muxtrix/releases/download/v0.1.77/muxtrix-0.1.77-macos-arm64.tar.gz"
  version "0.1.77"
  sha256 "dfa1962f1208d0e84ae4d85a60c4ff144faf5bd7bb8c7b47eb809b5f9300697f"
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
