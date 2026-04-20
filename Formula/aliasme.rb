class Aliasme < Formula
  desc "Organize your alias in command line"
  homepage "https://github.com/Jintin/aliasme"
  url "https://github.com/Jintin/aliasme/archive/refs/tags/v3.1.0.tar.gz"
  sha256 "539e47ea133be7aca7eccd4e89cda5bdaae88d450c93fbcc8138a12fba4b25ab"
  license "MIT"

  def install
    libexec.install "aliasme.sh"
  end

  def caveats
    <<~EOS
      To finish the installation, add the following line to your shell profile (~/.bash_profile or ~/.zshrc):
        source #{opt_libexec}/aliasme.sh
    EOS
  end

  test do
    assert_match "aliasme", shell_output("cat #{opt_libexec}/aliasme.sh")
  end
end
