# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Muss < Formula
  desc ""
  homepage ""
  version "0.9"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/djbender/muss/releases/download/v0.9/muss_0.9_Darwin_x86_64.tar.gz"
      sha256 "e66a6c62a30f8f9be7c6c2625df776798b90f303eda05c5442737a5e9ec12c3e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/djbender/muss/releases/download/v0.9/muss_0.9_Darwin_arm64.tar.gz"
      sha256 "c5154a929fd93f157c0a58385224bc039d82d102403c0d3bacbe8fc62163043e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/djbender/muss/releases/download/v0.9/muss_0.9_Linux_x86_64.tar.gz"
      sha256 "fe8106d06b5c8bb2c95b35d8cfd55a479e949afaf391e088bce6040f24c76668"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/djbender/muss/releases/download/v0.9/muss_0.9_Linux_arm64.tar.gz"
      sha256 "8e1b9d01a757c8e5688912f98f173770d89f90887db28fb9a4e2bce43ed35c97"
    end
  end

  depends_on "vault"

  def install
    bin.install "muss"
  end

  test do
    system bin/"muss", "help"
  end
end
