class CamelliaNews < Formula
  desc "Fetch recent Alpha Vantage headlines for a stock ticker"
  homepage "https://github.com/aaronwork1205/camellia"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aaronwork1205/camellia/releases/download/v0.1.0/camellia-darwin-arm64.tar.gz"
      sha256 "58b897f4961f1d6c930eb3172cc0ba8bc82390381d39fe42ef98627877b4aa78"
    else
      url "https://github.com/aaronwork1205/camellia/releases/download/v0.1.0/camellia-darwin-amd64.tar.gz"
      sha256 "6b7ed1412306be7595802e4814842e1aba0babf619bc5cc1924f86a92e2d70a2"
    end
  end

  on_linux do
    url "https://github.com/aaronwork1205/camellia/releases/download/v0.1.0/camellia-linux-amd64.tar.gz"
    sha256 "bae0ab2ed6ef182b79a7c5c8685a6161c2715ade0302180acb0f0c9ac7091cde"
  end

  def install
    bin.install "camellia"
  end

  test do
    assert_match "Alpha Vantage", shell_output("#{bin}/camellia TEST 2>&1", 1)
  end
end
