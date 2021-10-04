# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ok < Formula
  desc "Auto devops."
  homepage "https://outblocks.io"
  version "0.1.24"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.24/outblocks-0.1.24-darwin_amd64.tar.gz"
      sha256 "4917be35eda5cbc3bfa98588b76d654963653c3302e2fc0d94a323cd478f32b2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.24/outblocks-0.1.24-darwin_arm64.tar.gz"
      sha256 "9b1168ecc5adc549238922b4c1206265f557e9d38958bcea99f3aa5c70b07926"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.24/outblocks-0.1.24-linux_amd64.tar.gz"
      sha256 "f97c7510cf4fede117daab9302d8e36e569a6ee251adad94a09c1e90d6a377ec"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.24/outblocks-0.1.24-linux_armv6.tar.gz"
      sha256 "7a6a134a2af59b30c375c761aebbad0c9abb0d4e51d0d32dc70e8441048e5627"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.24/outblocks-0.1.24-linux_arm64.tar.gz"
      sha256 "ca9c0047a40728089253b73548ea936327e6684dbfe9b43ecb0c86dda93baca6"
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
