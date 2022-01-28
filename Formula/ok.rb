# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ok < Formula
  desc "Auto devops."
  homepage "https://outblocks.io"
  version "0.1.56"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.56/outblocks-0.1.56-darwin_arm64.tar.gz"
      sha256 "cf81c77a134834fc6e94319b289063f36095d0fec6024a9b88edaebfc1e90f49"

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
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.56/outblocks-0.1.56-darwin_amd64.tar.gz"
      sha256 "2494bf669c644cfa76da1ef63f9c0508847a260f88b08a9f619d0dbd31b752d6"

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
    if Hardware::CPU.intel?
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.56/outblocks-0.1.56-linux_amd64.tar.gz"
      sha256 "7190b4c42333555c74f7a2fe9db8d8e5b9b188f1be6ff97e8ed47634bbb1ec3a"

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
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.56/outblocks-0.1.56-linux_armv6.tar.gz"
      sha256 "57d4996a5e68bc082c96fccebb670c79ea6ab506b5639a40459077e7b020d970"

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
      url "https://github.com/outblocks/outblocks-cli/releases/download/v0.1.56/outblocks-0.1.56-linux_arm64.tar.gz"
      sha256 "497daf37bacf6c2b914fcea887012a81203e4f381bf1aa8d29ec1c08c1e018d8"

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
