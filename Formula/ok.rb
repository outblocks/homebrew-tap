# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ok < Formula
  desc "Auto devops."
  homepage "https://outblocks.io"
  version "0.1.5"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.5/outblocks-0.1.5-darwin_amd64.tar.gz"
      sha256 "c8baea0dcdbbb2d42de9076fa8c6bf7c3f9519bf1825cecad0bdd2ffb49e86ce"
    end
    if Hardware::CPU.arm?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.5/outblocks-0.1.5-darwin_arm64.tar.gz"
      sha256 "a04009adb8bc15793263d3de0ad430f7654f3596c7b829cac1010a32be20bb8b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.5/outblocks-0.1.5-linux_amd64.tar.gz"
      sha256 "2ee0e33fc943251718079f2fa23284c92c4087ad37155fe97012bc0f65252a3c"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.5/outblocks-0.1.5-linux_armv6.tar.gz"
      sha256 "df1cf4599c81e08d0fad2e2eaafce73a1b0edb999ed69e0c170d77b811e2a10a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.5/outblocks-0.1.5-linux_arm64.tar.gz"
      sha256 "3012d098d4dce38db10a886a0c5d86eaf9e8e5f4e3d937202559d123a83c9044"
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
