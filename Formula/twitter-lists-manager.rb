class TwitterListsManager < Formula
  desc "Twitter lists manager CLI"
  homepage "https://github.com/amitizle/twitter-lists-manager"
  url "https://github.com/amitizle/twitter-lists-manager/releases/download/0.1.4/twitter-lists-manager0.1.4_darwin_x86_64.tar.gz"
  version "0.1.4"
  sha256 "c53c303805dcf510c67965933fca1816d811af973af0c31677150716ecaf950d"

  def install
    bin.install "twitter-lists-manager"
  end

  test do
    system "#{bin}/twitter-lists-manager --help"
  end
end
