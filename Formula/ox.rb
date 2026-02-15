class Ox < Formula
  desc "Minimal CLI coding agent in Rust"
  homepage "https://github.com/muneebshahid/ox"
  url "https://github.com/muneebshahid/ox/archive/refs/tags/v0.1.1.tar.gz"
  version "0.1.1"
  sha256 "9a5e0fb222190aae7df1ee18ba874456a270def8f82f69522a8a4afcee3fa39e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage: ox", shell_output("#{bin}/ox --help")
  end
end
