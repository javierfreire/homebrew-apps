class Shellbook < Formula
  desc "Shellbook is a command-line tool that allows playing a `Markdown` document, executing the shell commands that it contains, and interacting with it."
  homepage "https://github.com/javierfreire/shellbook"
  url "https://github.com/javierfreire/shellbook/releases/download/v0.1.0/shellbook-native-v0.1.0.tar.gz"
  sha256 "1fb3f9c0d8f08218b5ccc978a6a7adaff571f0cf8d70867c9a4a5bbc96726923"
  license "GPL-1.0-or-later"

  def install
    libexec.install Dir["*"]
    bin.install "#{libexec}/shellbook"
  end

  test do
    system "#{bin}/shellbook", "help"
  end
end