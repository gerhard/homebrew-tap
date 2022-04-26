# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dagger < Formula
  desc "Dagger is a programmable deployment system."
  homepage "https://github.com/dagger/dagger"
  version "0.2.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.dagger.io/dagger/releases/0.2.8/dagger_v0.2.8_darwin_amd64.tar.gz"
      sha256 "67833176a8fc0c0fb40f73c580bf86707043b2b545aab4dc822564f56075543f"

      def install
        bin.install "dagger"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.dagger.io/dagger/releases/0.2.8/dagger_v0.2.8_darwin_arm64.tar.gz"
      sha256 "24af8de5ee13643aa2a361b5ef6821b45cb29f03ed3bca11a2b7d924e2d01205"

      def install
        bin.install "dagger"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.dagger.io/dagger/releases/0.2.8/dagger_v0.2.8_linux_arm64.tar.gz"
      sha256 "8adbfc706217c09a6ef36c905e62006f46b1052e393b0a5a2b7c130d11fde7d5"

      def install
        bin.install "dagger"
      end
    end
    if Hardware::CPU.intel?
      url "https://dl.dagger.io/dagger/releases/0.2.8/dagger_v0.2.8_linux_amd64.tar.gz"
      sha256 "c2cb49bb458cbbd23ee50e90a287cd2fa075e09c2e118a4f4e8af6b6a7dab5ff"

      def install
        bin.install "dagger"
      end
    end
  end

  test do
    system "#{bin}/dagger version"
  end
end
