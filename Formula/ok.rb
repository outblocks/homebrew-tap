# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ok < Formula
  desc "Auto devops."
  homepage "https://outblocks.io"
  version "0.1.20"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.20/outblocks-0.1.20-darwin_amd64.tar.gz"
      sha256 "0801e5d7a0f5b01c7531b6d479c54756e8ccb56274ea9ae38e726cefe7af0a12"
    end
    if Hardware::CPU.arm?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.20/outblocks-0.1.20-darwin_arm64.tar.gz"
      sha256 "495e057b4ed739d4bb1dc2af77cdd0c15b1cd816c02510a65f5bf57354a72aff"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.20/outblocks-0.1.20-linux_amd64.tar.gz"
      sha256 "4d50e70fb6e60859a58fc7bd09a8f4d1d93c84e93e64c6488c898e302ebaa2ab"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.20/outblocks-0.1.20-linux_armv6.tar.gz"
      sha256 "b42d0d2beb4c1274f227db78968edf3cecea8b85f7b3f9004aa99d813e11348e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.20/outblocks-0.1.20-linux_arm64.tar.gz"
      sha256 "beb66eac2f47fa4a79b959ee6390a736228bb3dfdff18b13af05997080cceb1c"
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
