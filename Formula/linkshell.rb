class Linkshell < Formula
  desc "Remote terminal bridge — control local CLI sessions from your phone"
  homepage "https://github.com/LiuTianjie/LinkShell"
  url "https://registry.npmjs.org/linkshell-cli/-/linkshell-cli-0.5.37.tgz"
  sha256 "11d0a83efee97047a9aaaea847af76d45843aa4bb1a108f2572f584ecb732828"
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
