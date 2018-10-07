class TwitterListsManager < Formula
  desc "Twitter lists manager CLI"
  homepage "https://github.com/amitizle/twitter-lists-manager"
  url "https://github.com/amitizle/twitter-lists-manager/releases/download/0.1.5/twitter-lists-manager0.1.5_darwin_x86_64.tar.gz"
  version "0.1.5"
  sha256 "35de3cd99a06c29b4404b705af1c24a3593089bbd6da74c8ca5c0fff596828aa"

  def install
    bin.install "twitter-lists-manager"
  end

  test do
    system "#{bin}/twitter-lists-manager --help"
  end
end
