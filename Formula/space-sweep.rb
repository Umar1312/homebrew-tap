class SpaceSweep < Formula
  desc "Interactive macOS disk-space inspector and cleaner"
  homepage "https://github.com/Umar1312/space-sweep"
  url "https://github.com/Umar1312/space-sweep/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "f03c2fcca395445e5b3c95f8bd8fbbaa79d8b65ed92cb6e0e6d95a4ec9307b7a"
  license "MIT"

  depends_on :macos
  depends_on "python"

  def install
    bin.install "space_sweep.py" => "space-sweep"
  end

  test do
    assert_predicate bin/"space-sweep", :executable?
    assert_match "Done. Stay spacious.", pipe_output(bin/"space-sweep", "q\n")
  end
end
