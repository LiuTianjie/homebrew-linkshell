class Linkshell < Formula
  desc "Follow, steer and approve the coding agents on your computer from your phone"
  homepage "https://github.com/LiuTianjie/LinkShell"
  url "https://registry.npmjs.org/linkshell-cli/-/linkshell-cli-0.10.51.tgz"
  sha256 "33f266cb37f7b4f2b379c4d360a0cee6548560636af7e2a7d537e71a2ec9fa1b"
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
