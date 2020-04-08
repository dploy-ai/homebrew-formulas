class Dploy < Formula
  desc "Deployment Tool"
  homepage "https://github.com/dploy-ai"
  url "http://temp-cli.storage.googleapis.com/dploy"
  sha256 "3236838b2b56f567b083882a45abb996a4fdc811f45ab5ffda3f398097049e52"
  version "0.0.0"

  # depends_on "curl"

  # Don't need to compile / Already compiled
  bottle :unneeded

  def install
    system "DPLOY_HOST='https://api.dev.dinosl1ke1cecream.dploy.ai/'", "dploy"
    bin.install "dploy"
  end
end
