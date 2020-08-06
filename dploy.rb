class Dploy < Formula
    def self.latest_dploy_revision
        `curl --silent 'https://storage.googleapis.com/dployai-cli/dploy-darwin-amd64-latest-info.txt' | grep version: | grep -o "[^version: ].*$"`.strip
    end
  
    def self.sha256_checksum
      `curl --silent 'https://storage.googleapis.com/dployai-cli/dploy-darwin-amd64-latest.tar.gz.sha256'`.split.first
    end
  
    desc "dploy.ai CLI"
    homepage "https://dploy.ai/"
    url "https://storage.googleapis.com/dployai-cli/dploy-darwin-amd64-latest.tar.gz"
    sha256 sha256_checksum
    version "#{latest_dploy_revision}"
  
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