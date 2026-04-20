class AliasmeLocal < Formula
  desc "Organize your alias in command line (Local Test)"
  homepage "https://github.com/Jintin/aliasme"
  url "file:///Users/ting/developer/aliasme"
  version "3.0.0-local"

  def install
    # We use libexec because it's a shell script that needs to be sourced,
    # not just run as a standalone executable.
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
