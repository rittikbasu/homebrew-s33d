class S33d < Formula
    desc "A beautiful, fast BIP39 mnemonic generator"
    homepage "https://github.com/rittikbasu/s33d"
    license "MIT"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/rittikbasu/s33d/releases/download/v0.1.0/s33d-macos-x86_64"
        sha256 "338299fe7131a76a5c19752c8a4f0415446f2ff0351c6208d94c92830941fb1e"
      else
        url "https://github.com/rittikbasu/s33d/releases/download/v0.1.0/s33d-macos-aarch64"
        sha256 "cef96b1160bd0f16019cc07a233012a3b121aeec08e6dbe51c5470a8d2121d51"
      end
    end
  
    on_linux do
      url "https://github.com/rittikbasu/s33d/releases/download/v0.1.0/s33d-linux-x86_64"
      sha256 "57b593ac6f43868230a94c01e7ec591e08b4a3b996485c1c852a356183df21d2"
    end
  
    def install
      bin.install Dir["s33d*"].first => "s33d"
    end
  
    test do
      assert_match "s33d", shell_output("#{bin}/s33d --help")
    end
  end