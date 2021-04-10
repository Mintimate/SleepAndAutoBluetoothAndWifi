class Blueutil < Formula
  desc "Get/set bluetooth power and discoverable state"
  homepage "https://github.com/toy/blueutil"
  url "https://github.com/toy/blueutil/archive/v2.7.0.tar.gz"
  sha256 "1b171abdadb008cc7f3dac6e647c000d4ae89246c27a8b2926e56643deb1e422"
  license "MIT"
  head "https://github.com/toy/blueutil.git"

  depends_on xcode: :build

  def install
    # Set to build with SDK=macosx10.6, but it doesn't actually need 10.6
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/blueutil"
  end

  test do
    system "#{bin}/blueutil"
  end
end
