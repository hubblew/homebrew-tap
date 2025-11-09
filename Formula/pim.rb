# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
class Pim < Formula
  desc "CLI to manage AI instructions and prompts with ease"
  homepage "https://github.com/hubblew/pim"
  url "https://github.com/hubblew/pim/archive/v0.1.0.tar.gz"
  sha256 "95f4078d7bffe75c0beb6677a9b00333b35e1e9f000c86b75a4bb455384efa8f"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin/"pim", "version"
  end
end
