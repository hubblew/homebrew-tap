class Pim < Formula
  desc "CLI to manage AI instructions and prompts with ease"
  homepage "https://github.com/hubblew/pim-cli"
  url "https://github.com/hubblew/pim-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "9fa407d3cc273d3947c65d58aa55d59f95e8373057830ca99e96521589066ccd"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin/"pim", "version"
  end
end
