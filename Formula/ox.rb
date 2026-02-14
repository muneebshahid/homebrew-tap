class Ox < Formula
  desc "Minimal CLI coding agent in Rust"
  homepage "https://github.com/muneebshahid/ox"
  url "https://github.com/muneebshahid/ox/archive/adc80d0aaefddc633a1e081524486c8dafdc6085.tar.gz"
  version "0.1.0"
  sha256 "bf3fac9d7f80996cfb977051eabe03588aa2134a02bef9725d23bc770176afe8"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage: ox", shell_output("#{bin}/ox --help")
  end
end
