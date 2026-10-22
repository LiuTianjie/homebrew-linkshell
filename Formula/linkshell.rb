class Linkshell < Formula
  desc "Follow, steer and approve the coding agents on your computer from your phone"
  homepage "https://github.com/LiuTianjie/LinkShell"
  url "https://registry.npmjs.org/linkshell-cli/-/linkshell-cli-0.10.54.tgz"
  sha256 "ae67895f6d56f7d9590432dc8e5652e130c9eb97df1ec7338a4f07944a4d9272"
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
