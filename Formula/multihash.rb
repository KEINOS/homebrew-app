# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Multihash < Formula
  desc "Multihash is a command that returns a self-explanatory hash value."
  homepage "https://github.com/KEINOS/brew-multihash"
  version "0.1.0-0550c5b"

  on_macos do
    url "https://github.com/KEINOS/brew-multihash/releases/download/v0.1.0-0550c5b/brew-multihash_0.1.0-0550c5b_macOS_all.zip", :using => CurlDownloadStrategy
    sha256 "8dfb6433d5c3ab9600c34f9274a755be3bff5cfc4fbdc114d8b6c9588c35cf28"

    def install
      bin.install "multihash"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/KEINOS/brew-multihash/releases/download/v0.1.0-0550c5b/brew-multihash_0.1.0-0550c5b_Linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "62c777867476ca263387ae234ec3ec2d0d292cb1f79c0c3d3d642d8c0b006477"

      def install
        bin.install "multihash"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/KEINOS/brew-multihash/releases/download/v0.1.0-0550c5b/brew-multihash_0.1.0-0550c5b_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "6b03d4f074e7c2360d6448c38e2b946037e6a7a37575f522f5c274643efdc195"

      def install
        bin.install "multihash"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/KEINOS/brew-multihash/releases/download/v0.1.0-0550c5b/brew-multihash_0.1.0-0550c5b_Linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "01baaa88b293e19603817f2b3b90ae78b6ea60a9d81400f5ace21128da7c4b15"

      def install
        bin.install "multihash"
      end
    end
  end

  test do
    system "#{bin}/multihash -v"
  end
end
