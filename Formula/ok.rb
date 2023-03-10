# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ok < Formula
  desc "Auto devops."
  homepage "https://outblocks.io"
  version "0.1.143"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.143/outblocks-0.1.143-darwin_amd64.tar.gz"
      sha256 "0ab627cfad0874b89cdfb35df9ad2b8856dba238085a3a9348c2237120e559e2"

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
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.143/outblocks-0.1.143-darwin_arm64.tar.gz"
      sha256 "185764e70704c64416f9636a59240e55dbdf4c70b13216c4b1f3739a1fc4c922"

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
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.143/outblocks-0.1.143-linux_armv6.tar.gz"
      sha256 "bbef5e7a03fbd41151aff39b063145bc151c2cbdbc9c1ceb65781673303a3708"

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
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.143/outblocks-0.1.143-linux_arm64.tar.gz"
      sha256 "debd8aaad9268824981b34b95da0544fc8c163dd992c66a0ade55356757adbf3"

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
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.143/outblocks-0.1.143-linux_amd64.tar.gz"
      sha256 "dbc3312569d767ac48c76cc18b3210361bf2abc082664559652424d8c02aa595"

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
