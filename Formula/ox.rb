class Ox < Formula
  desc "Minimal CLI coding agent in Rust"
  homepage "https://github.com/muneebshahid/ox"
  url "https://github.com/muneebshahid/ox/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  sha256 "c61d58942a70f9498cafdd031f068571698f1d9dc1736a9b3f85bbc749b1aabc"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", *std_cargo_args
  end

  test do
    assert_match "Usage: ox", shell_output("#{bin}/ox --help")
  end
end
