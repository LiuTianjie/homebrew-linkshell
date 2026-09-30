class Linkshell < Formula
  desc "Remote terminal bridge — control local CLI sessions from your phone"
  homepage "https://github.com/LiuTianjie/LinkShell"
  url "https://registry.npmjs.org/linkshell-cli/-/linkshell-cli-0.6.1.tgz"
  sha256 "88e2ae75d40c8e3c3319d17e1a2512da20470a350d5edf0aefded0fa0cceb520"
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
