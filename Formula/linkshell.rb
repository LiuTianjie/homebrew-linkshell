class Linkshell < Formula
  desc "Follow, steer and approve the coding agents on your computer from your phone"
  homepage "https://github.com/LiuTianjie/LinkShell"
  url "https://registry.npmjs.org/linkshell-cli/-/linkshell-cli-0.10.61.tgz"
  sha256 "9f813bc7de6d3fe471d85b4011f53ee4f7059f54721112dde8a6d5146392bc17"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/linkshell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkshell --version")
  end
end
