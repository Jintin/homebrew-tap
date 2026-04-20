class Aliasme < Formula
  desc "Organize your alias in command line"
  homepage "https://github.com/Jintin/aliasme"
  url "https://github.com/Jintin/aliasme/archive/refs/tags/v3.1.0.tar.gz"
  sha256 "734c88140eb4f556d788568715815ee12a1a62cb7dc8ca751a0b45a4f3f5ee93"
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
