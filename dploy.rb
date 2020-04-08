class Dploy < Formula
  desc "Deployment Tool"
  homepage "https://github.com/dploy-ai"
  url "http://temp-cli.storage.googleapis.com/dploy"
  sha256 "3a454346608470e25bd040cbeaf5089554a294898fe408ce4fc9fe164473c28"
  version "0.0.0"

  # depends_on "curl"

  # Don't need to compile / Already compiled
  bottle :unneeded

  def install
    ENV['DPLOY_HOST'] = "https://api.dev.dinosl1ke1cecream.dploy.ai/"
    echo ENV['DPLOY_HOST']
    bin.install "dploy"
  end
end
