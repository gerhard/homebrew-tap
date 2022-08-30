# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dagger < Formula
  desc "Dagger is a programmable deployment system."
  homepage "https://github.com/dagger/dagger"
  version "0.2.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://dl.dagger.io/dagger/releases/0.2.32/dagger_v0.2.32_darwin_arm64.tar.gz"
      sha256 "236923de552b9585053fe6579911024f9e1e43c030e842cfdd2a60d8eb072dc3"

      def install
        bin.install "dagger"
      end
    end
    if Hardware::CPU.intel?
      url "https://dl.dagger.io/dagger/releases/0.2.32/dagger_v0.2.32_darwin_amd64.tar.gz"
      sha256 "61bc9030c5f0dcefda5c62ff763872aaa90e0ebddf820663eef93bfbe672c808"

      def install
        bin.install "dagger"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.dagger.io/dagger/releases/0.2.32/dagger_v0.2.32_linux_amd64.tar.gz"
      sha256 "b33c8f3d141090724a52b5b5d2ebdafa79ca90b66f0fa42a47987dfa40ce8676"

      def install
        bin.install "dagger"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.dagger.io/dagger/releases/0.2.32/dagger_v0.2.32_linux_arm64.tar.gz"
      sha256 "ba08cd1e0d95ea9b7626efc9f946ac9d51e111daf7d83635542bd9b49ab91c8a"

      def install
        bin.install "dagger"
      end
    end
  end

  test do
    system "#{bin}/dagger version"
  end
end
