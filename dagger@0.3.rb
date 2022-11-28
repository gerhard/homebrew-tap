# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DaggerAT03 < Formula
  desc "Dagger is a programmable deployment system."
  homepage "https://github.com/dagger/dagger"
  version "0.3.6-alpha.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://gerhard-dagger.s3.eu-west-1.amazonaws.com/dagger/releases/0.3.6-alpha.1/dagger_v0.3.6-alpha.1_darwin_arm64.tar.gz"
      sha256 "71ff2807a00baca633c0494ecc435c93e0ffadfc552b69be598baa9c8c9c21d9"

      def install
        bin.install "dagger"
      end
    end
    if Hardware::CPU.intel?
      url "https://gerhard-dagger.s3.eu-west-1.amazonaws.com/dagger/releases/0.3.6-alpha.1/dagger_v0.3.6-alpha.1_darwin_amd64.tar.gz"
      sha256 "4d92e79ba47fcaad140e8b484ead86d1c1ec57d34d22c1379d258aead5d96c9b"

      def install
        bin.install "dagger"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://gerhard-dagger.s3.eu-west-1.amazonaws.com/dagger/releases/0.3.6-alpha.1/dagger_v0.3.6-alpha.1_linux_arm64.tar.gz"
      sha256 "843eff6e123e43eeca0b9e5966a8f23def1441de80c4fac6295b96cfa43b320f"

      def install
        bin.install "dagger"
      end
    end
    if Hardware::CPU.intel?
      url "https://gerhard-dagger.s3.eu-west-1.amazonaws.com/dagger/releases/0.3.6-alpha.1/dagger_v0.3.6-alpha.1_linux_amd64.tar.gz"
      sha256 "3cf3ff773cd2f0019a8b9bd75e00b29a6528b3fb6674f442ec95830501bf3469"

      def install
        bin.install "dagger"
      end
    end
  end

  test do
    system "#{bin}/dagger version"
  end
end
