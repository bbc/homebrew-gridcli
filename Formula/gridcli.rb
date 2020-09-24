# This file was generated by GoReleaser. DO NOT EDIT.
class Gridcli < Formula
  desc "This application simplifies the deployment of Grid."
  homepage "https://github.com/bbc/homebrew-gridcli"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bbc/gridcli/releases/download/v0.1.0/gridcli_0.1.0_darwin_amd64.tar.gz"
    sha256 "65c7d3b3b9d77fc6852d3d82c6d13d665c6a18ab260264a10f4d325981cc0c81"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bbc/gridcli/releases/download/v0.1.0/gridcli_0.1.0_linux_amd64.tar.gz"
      sha256 "0f9b00e1d20d2c983f5f4dca473f1a62132b8b1fea9058e09bd73af98ec65b29"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bbc/gridcli/releases/download/v0.1.0/gridcli_0.1.0_linux_arm64.tar.gz"
        sha256 "014ccbb8a481832b2c2c0ee2ad477d57d606ffe4e199c7088cdc56343bcea0ed"
      else
        url "https://github.com/bbc/gridcli/releases/download/v0.1.0/gridcli_0.1.0_linux_arm.tar.gz"
        sha256 "3b07ef2284fb51c8e33464147089e398694ff0be45b078d6ca3306a14215c5ed"
      end
    end
  end

  def install
    bin.install "grid"
  end
end
