class Dploy < Formula
  desc "Deployment Tool"
  homepage "https://github.com/dploy-ai"
  url "http://temp-cli.storage.googleapis.com/dploy"
  sha256 "no_check"
  version "latest"

  # depends_on "curl"

  # Don't need to compile / Already compiled
  bottle :unneeded

  def install
    bin.install "dploy"
  end

  # def post_install
  #   system "echo alias dploy=\'DPLOY_HOST=\"https://api.dev.dinosl1ke1cecream.dploy.ai/\" dploy\' >> ~/.bash_profile"
  #   system "echo alias dploy=\'DPLOY_HOST=\"https://api.dev.dinosl1ke1cecream.dploy.ai/\" dploy\' >> ~/.zshrc"
  # end
end
