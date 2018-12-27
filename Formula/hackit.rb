class Hackit < Formula
  VERSION = "0.1".freeze
  NAME = "hackit".freeze
  REPO = "gofunct/#{NAME}".freeze
  ARCH = "darwin_amd64".freeze
  BIN = "#{NAME}_#{ARCH}".freeze

  desc "A utility for creating grpc services"
  homepage "https://github.com/#{REPO}"
  url "https://github.com/#{REPO}/releases/download/v#{VERSION}/#{BIN}"
  version VERSION
  sha256 "528960042fadfdba78281e9990a327ae37741ce6"


  head do
    url "https://github.com/#{REPO}/releases/download/canary/#{BIN}"
  end

  def install
    mv BIN, NAME
    bin.install NAME
  end

  test do
    system "#{bin}/#{NAME}", "version"
  end
end