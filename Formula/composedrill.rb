class Composedrill < Formula
  desc "Prove your Docker Compose app can recover before you need it"
  homepage "https://github.com/maliroq/composedrill"
  url "https://github.com/maliroq/composedrill/archive/refs/tags/v0.1.0-preview.tar.gz"
  sha256 "8489e89c345841cb3d074d471d5f3fd911f9f8cde5b5f0fb0edbbfc2c07d2802"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cmd/composedrill"
  end

  test do
    assert_match "composedrill #{version}", shell_output("#{bin}/composedrill version")
    assert_match "Usage:", shell_output("#{bin}/composedrill help")

    (testpath/"compose.yaml").write <<~YAML
      services:
        web:
          image: example.invalid/composedrill-test:1.0
    YAML

    output = shell_output("#{bin}/composedrill scan #{testpath}")
    assert_match "Compose projects", output
    assert_match "Recovery readiness", output
  end
end
