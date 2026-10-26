class SpaceSweep < Formula
  desc "Interactive macOS disk-space inspector and cleaner"
  homepage "https://github.com/Umar1312/space-sweep"
  url "https://github.com/Umar1312/space-sweep/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7dd87fcb2286a1f02bf2fbfafd47913919d1c951aa53b57b23fd6fbca6cd5192"
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
