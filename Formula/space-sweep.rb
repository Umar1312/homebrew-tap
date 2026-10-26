class SpaceSweep < Formula
  desc "Interactive macOS disk-space inspector and cleaner"
  homepage "https://github.com/Umar1312/space-sweep"
  url "https://github.com/Umar1312/space-sweep/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9f14d35f791d9757753ea652f2b00d2187d4c33fe2cccda8dbd741d461eb3aca"
  license "MIT"

  depends_on :macos
  depends_on "python"

  def install
    bin.install "space_sweep.py" => "space-sweep"
  end

  test do
    assert_predicate bin/"space-sweep", :executable?
    assert_match "Done. Stay spacious.", pipe_output("#{bin}/space-sweep", "q\n")
  end
end
