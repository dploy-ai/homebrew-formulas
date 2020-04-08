class Dploy < Formula
  desc "Deployment Tool"
  homepage "https://github.com/dploy-ai"
  url "http://temp-cli.storage.googleapis.com/dploy"
<<<<<<< HEAD:dploy.rb
  sha256 "33a454346608470e25bd040cbeaf5089554a294898fe408ce4fc9fe164473c28"
=======
  sha256 "3236838b2b56f567b083882a45abb996a4fdc811f45ab5ffda3f398097049e52"
>>>>>>> 689c17164c6e7b578a61c0c1df53fa62f584017a:dploy.rb
  version "0.0.0"

  $DPLOY_HOST="https://api.dev.dinosl1ke1cecream.dploy.ai/"

  # Don't need to compile / Already compiled
  bottle :unneeded

  def install
<<<<<<< HEAD:dploy.rb
    ENV['DPLOY_HOST'] = "https://api.dev.dinosl1ke1cecream.dploy.ai/"
    echo ENV['DPLOY_HOST']
=======
>>>>>>> 689c17164c6e7b578a61c0c1df53fa62f584017a:dploy.rb
    bin.install "dploy"
  end
end
