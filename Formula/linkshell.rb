class Linkshell < Formula
  desc "Remote terminal bridge — control local CLI sessions from your phone"
  homepage "https://github.com/LiuTianjie/LinkShell"
  url "https://registry.npmjs.org/linkshell-cli/-/linkshell-cli-0.2.92.tgz"
  sha256 "5e487fac917373ca49cdcb86b97a53fc97ec22784604915569ac52425dbaf4c7"
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
