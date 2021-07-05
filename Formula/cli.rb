# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Auto devops."
  homepage "https://outblocks.io"
  version "0.1.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.0/outblocks-0.1.0-darwin_amd64.tar.gz"
      sha256 "c2b1b92aef5c6a7263bbec9f9eca80579aab384aaa151fb3df3654264c0fdb64"
    end
    if Hardware::CPU.arm?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.0/outblocks-0.1.0-darwin_arm64.tar.gz"
      sha256 "5946ed7cb63c47334c4e0300d024173b24e26686a21800b01083b1c5a30bcd2e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.0/outblocks-0.1.0-linux_amd64.tar.gz"
      sha256 "582ba37da415fa92ce3c10ab56ffc89e0a735c4e288c8b8941054a89a549c404"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.0/outblocks-0.1.0-linux_armv6.tar.gz"
      sha256 "e79ef424f1042aec47dc2f52918853a7292ac0791cff64999ce96b89c11e6fa3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.0/outblocks-0.1.0-linux_arm64.tar.gz"
      sha256 "f6e519795ea812c39f031854a0bfc6435887ec40d09359a7250d1f3a1ad44a36"
    end
  end

  depends_on "git"

  def install
    bin.install "ok"
    output = Utils.popen_read("#{bin}/ok completion bash")
    (bash_completion/"ok").write output
    output = Utils.popen_read("#{bin}/ok completion zsh")
    (zsh_completion/"_ok").write output
    output = Utils.popen_read("#{bin}/ok completion fish")
    (fish_completion/"ok.fish").write output
    prefix.install_metafiles
  end

  test do
    system "#{bin}/ok --version"
  end
end
