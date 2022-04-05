# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dagger < Formula
  desc "Dagger is a programmable deployment system."
  homepage "https://github.com/dagger/dagger"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://dl.dagger.io/dagger/releases/0.2.5/dagger_v0.2.5_darwin_arm64.tar.gz"
      sha256 "a4e8103302178e2f98767d91500a54110917389cdb8e1ac89d89d494079710f9"

      def install
        bin.install "dagger"
      end
    end
    if Hardware::CPU.intel?
      url "https://dl.dagger.io/dagger/releases/0.2.5/dagger_v0.2.5_darwin_amd64.tar.gz"
      sha256 "b646cfd42c5fd05a7301f8a4a30c07fcc863541b3f4328f86742d234ed2ce4d6"

      def install
        bin.install "dagger"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.dagger.io/dagger/releases/0.2.5/dagger_v0.2.5_linux_amd64.tar.gz"
      sha256 "bb552399007dff32a9071f6a3cf38218867ada55a5c6cdff7976d89dfb98b908"

      def install
        bin.install "dagger"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.dagger.io/dagger/releases/0.2.5/dagger_v0.2.5_linux_arm64.tar.gz"
      sha256 "46f76868af96b3b94377842bd12d71b4ff0c9e9a1397c07ba36d9b0deb56b845"

      def install
        bin.install "dagger"
      end
    end
  end

  test do
    system "#{bin}/dagger version"
  end
end
