class Dploy < Formula
  desc "dploy.ai CLI"
  homepage "https://dploy.ai/"
  url "http://temp-cli.storage.googleapis.com/dploy"
  sha256 "" # don't check for SHAs now so we can reinstall latest dev version
  version "0.0.1"

  # Don't need to compile / Already compiled
  bottle :unneeded

  def install
    system "mv", "dploy", "dploy-bare"
    system "bash", "-c", "printf '#!/bin/bash\nDPLOY_HOST=https://api.dev.dinosl1ke1cecream.dploy.ai dploy-bare \"$@\"' >> dploy" 
    bin.install "dploy-bare"
    bin.install "dploy"
  end

  def caveats
    <<~EOS
      Let's go! 🎉 Just run `dploy`.
    EOS
  end
end
