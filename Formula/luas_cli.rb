class LuasCLI < Formula
  desc "Luas (Dublin trams) CLI tool for forecasting times (using the official API)"
  homepage "https://github.com/amitizle/luas-cli"
  url "https://github.com/amitizle/luas-cli/releases/download/v1.0.7/luas_1.0.7_darwin_x86_64.tar.gz"
  version "1.0.7"
  sha256 "adccfe12d2a24b2d899a1207aff1640e207d5bf9cdf37c6c7061597f5ef009ca"

  def install
    bin.install "luas"
  end

  test do
    system "#{bin}/luas --help"
  end
end
