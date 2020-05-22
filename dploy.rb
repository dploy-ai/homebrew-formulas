class Dploy < Formula
  desc "dploy.ai CLI"
  homepage "https://dploy.ai/"
  url "http://temp-cli.storage.googleapis.com/dploy"
  sha256 "" # don't check for SHAs now so we can reinstall latest dev version
  version "0.0.2"

  # Don't need to compile / Already compiled
  bottle :unneeded

  def install
    bin.install "dploy"
  end

  def caveats
    <<~EOS
      Let's go! 🎉 Just run `dploy`.
    EOS
  end
end
