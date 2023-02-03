# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ok < Formula
  desc "Auto devops."
  homepage "https://outblocks.io"
  version "0.1.142"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.142/outblocks-0.1.142-darwin_arm64.tar.gz"
      sha256 "bf992b816715ac54b7428ba7180187ada495f3c795f1f77c54c675c0a5342e2f"

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
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.142/outblocks-0.1.142-darwin_amd64.tar.gz"
      sha256 "c9880af56116a2d48befcafc7ae2147279782cf6667bce4f8c5d634c669668f3"

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
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.142/outblocks-0.1.142-linux_armv6.tar.gz"
      sha256 "2c822897d09d523fadcc22273db3fca5656c3250877845887b205a6a034e7be0"

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
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.142/outblocks-0.1.142-linux_amd64.tar.gz"
      sha256 "249a39e381a85042ea91d10da9c5cb7ff852ba692ff37f21451a082fbb51d042"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.142/outblocks-0.1.142-linux_arm64.tar.gz"
      sha256 "363c6a67505b98b67da8d803c9011b9620c0431f63871a4d413785dc7a8e4ca7"

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

  test do
    system "#{bin}/ok --version"
  end
end
