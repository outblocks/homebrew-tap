# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ok < Formula
  desc "Auto devops."
  homepage "https://outblocks.io"
  version "0.1.70"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.70/outblocks-0.1.70-darwin_arm64.tar.gz"
      sha256 "9a09b5eed129ce18fc6343bc4251b96f9a167b1761033c3bd1ee5e34e33ee1f8"

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
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.70/outblocks-0.1.70-darwin_amd64.tar.gz"
      sha256 "772bd38ee960513d52bbc22a19e551f5e7a45cc2499b98f276be7a5a1cb692b6"

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
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.70/outblocks-0.1.70-linux_arm64.tar.gz"
      sha256 "034b52af9bcf18a9b60f32b285f3ada0c1034d1df4250aa9e22e0f12bf28b40a"

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
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.70/outblocks-0.1.70-linux_amd64.tar.gz"
      sha256 "0afc16e5c8ec02023291cb99e8b96c570a8b8db138a80c242f8ca2585108da6f"

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
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.70/outblocks-0.1.70-linux_armv6.tar.gz"
      sha256 "6c6fb302e8c83245eac9cdc954cff21698f7ed01717c990f4da06343845b768d"

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
