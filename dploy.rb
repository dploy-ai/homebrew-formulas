class Dploy < Formula
  desc "Deployment Tool"
  homepage "https://github.com/dploy-ai"
  url "http://temp-cli.storage.googleapis.com/dploy"
  sha256 "d6436abc52ffa038b013fa22f4a5e8fcfb6cb1f863278c2b743470ee8d141d8a"
  version "0.0.0"

  # depends_on "curl"

  # Don't need to compile / Already compiled
  bottle :unneeded

  def install
    bin.install "dploy"
    system "DPLOY_HOST='https://api.dev.dinosl1ke1cecream.dploy.ai/' dploy"
  end
end
