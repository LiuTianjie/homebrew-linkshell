class Linkshell < Formula
  desc "Follow, steer and approve the coding agents on your computer from your phone"
  homepage "https://github.com/LiuTianjie/LinkShell"
  url "https://registry.npmjs.org/linkshell-cli/-/linkshell-cli-0.10.111.tgz"
  sha256 "c21e0fc6448de920765a4661eabd00b210002642c708c10f1ff8c15f4db87141"
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
