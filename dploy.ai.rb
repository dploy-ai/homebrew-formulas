class Dploy < Formula
  desc "Deployment Tool"
  homepage "https://github.com/dploy-ai"
  url "http://temp-cli.storage.googleapis.com/dploy"
  sha256 "33a454346608470e25bd040cbeaf5089554a294898fe408ce4fc9fe164473c28"
  version ""

  # depends_on "curl"

  # Don't need to compile / Already compiled
  bottle :unneeded

  def install
    bin.install "dploy.ai"
  end
end
