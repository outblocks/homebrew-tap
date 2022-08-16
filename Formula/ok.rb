# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ok < Formula
  desc "Auto devops."
  homepage "https://outblocks.io"
  version "0.1.127"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.127/outblocks-0.1.127-darwin_amd64.tar.gz"
      sha256 "73daff1fa1659e5911c9638a4874f87b3dd037ee4add802970b245048e07693d"

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
    end
    if Hardware::CPU.arm?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.127/outblocks-0.1.127-darwin_arm64.tar.gz"
      sha256 "ffb7faeca94eca7c9c4c0b44223ea430d8e8328852d074aa6ceb4177f502ea82"

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
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.127/outblocks-0.1.127-linux_arm64.tar.gz"
      sha256 "a45f3450db7540472d1deeaf4336077f21a7756f5c49314cf4d9cc59438bf4d9"

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
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.127/outblocks-0.1.127-linux_armv6.tar.gz"
      sha256 "b484cee900fde5877ba8393948bcb2c8a7919120d87f64e20438f9ea096997eb"

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
    end
    if Hardware::CPU.intel?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.127/outblocks-0.1.127-linux_amd64.tar.gz"
      sha256 "a60fe05c8961babcc121b1e7189d99f6daa3937a42c90037be802720e5aaec94"

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
    end
  end

  depends_on "git"

  test do
    system "#{bin}/ok --version"
  end
end
