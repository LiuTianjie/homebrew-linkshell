class Linkshell < Formula
  desc "Remote terminal bridge — control local CLI sessions from your phone"
  homepage "https://github.com/LiuTianjie/LinkShell"
  url "https://registry.npmjs.org/linkshell-cli/-/linkshell-cli-0.5.23.tgz"
  sha256 "9b11b57ff523d1167e76b49f7fd170570c7830ea0c9ea39e59b7ae4ee5d96cf2"
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
