class Linkshell < Formula
  desc "Remote terminal bridge — control local CLI sessions from your phone"
  homepage "https://github.com/LiuTianjie/LinkShell"
  url "https://registry.npmjs.org/linkshell-cli/-/linkshell-cli-0.2.93.tgz"
  sha256 "23657b8de0b56e07a70a0615d34048ad53fab364dcf46918a802b519b0814bc3"
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
