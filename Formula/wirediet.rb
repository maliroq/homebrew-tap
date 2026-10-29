class Wirediet < Formula
  desc "Build minimal, device-specific DNS policies through real, reversible experiments"
  homepage "https://github.com/maliroq/wirediet"
  url "https://github.com/maliroq/wirediet/releases/download/v0.1.0-preview.5/wirediet_0.1.0-preview.5_source.zip"
  version "0.1.0-preview.5"
  sha256 "5b19c1188e25962d90ea391383461a6403c76ec86732c4f2b02248ac100ed9e4"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.version=v#{version}"), "./cmd/wirediet"
  end

  test do
    assert_match "wirediet v#{version}", shell_output("#{bin}/wirediet version")
    assert_match "scan", shell_output("#{bin}/wirediet help 2>&1")
  end
end
