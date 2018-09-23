class LuasCli < Formula
  desc "Twitter lists manager CLI"
  homepage "https://github.com/amitizle/twitter-lists-manager"
  url "https://github.com/amitizle/twitter-lists-manager/releases/download/0.1.3/twitter-lists-manager0.1.3_darwin_x86_64.tar.gz"
  version "0.1.3"
  sha256 "8979c26a0c2736d0d08a522502f5097679922a79d446c85a5d1278c495f60f67"

  def install
    bin.install "twitter-lists-manager"
  end

  test do
    system "#{bin}/twitter-lists-manager --help"
  end
end
