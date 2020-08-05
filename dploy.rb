class Dploy < Formula
  def self.latest_dploy_revision
    @latest_dploy_revision ||= begin
      DateTime.parse(`curl --silent --HEAD 'http://storage.googleapis.com/dployai-cli/dploy-darwin-amd64-dev.tar.gz' | grep 'Last-Modified:'`.split(' ', 2).last.strip).to_s
    end
  end

  def self.sha256_checksum
    `curl --silent 'http://storage.googleapis.com/dployai-cli/dploy-darwin-amd64-dev.tar.gz.sha256'`.split.first
  end

  desc "dploy.ai CLI"
  homepage "https://dploy.ai/"
  url "http://temp-cli.storage.googleapis.com/dploy-darwin-amd64.tar.gz"
  sha256 sha256_checksum
  version "0.1-#{latest_dploy_revision}"

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
