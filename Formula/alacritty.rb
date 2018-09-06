# Inspired by https://github.com/mscharley/homebrew-homebrew/blob/master/alacritty.rb

class Alacritty < Formula
  desc "A cross-platform, GPU-accelerated terminal emulator"
  homepage "https://github.com/jwilm/alacritty"
  head "https://github.com/jwilm/alacritty.git", using: :git

  version "1.0.0"

  depends_on "fontconfig"
  depends_on "coreutils"
  depends_on "rustup-init"

  def install
    # rustup-init build homedir. It will update ENV["CARGO_HOME"] to be something like /private/tmp/alacritty-20180906/.brew_home/.cargo/bin
    system "rustup-init", "--no-modify-path", "--default-toolchain", "stable", "-y"
    ENV.append_path "PATH", *Dir["#{ENV['HOME']}/.cargo/bin"]

    # Build the app!
    system "gmake", "app"

    (prefix / "Applications").install "target/release/osx/Alacritty.app"
    bin.install "target/release/alacritty"
  end

  def caveats
    msg = <<~EOS

      There's no configuration file in this formula. I'm using my own dotfiles repo to symlink my config
      into ~/.config/alacritty.
      https://github.com/amitizle/dotfiles

      WARNING: This formula can't install into /Applications, the application
      has been installed to:

        #{prefix / "Applications/Alacritty.app"}

      This path is stable across upgrades, you can create your own symlink in
      the global /Applications folder as follows:

        ln -s #{prefix / "Applications/Alacritty.app"} /Applications/
    EOS

    msg
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test alacritty`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
