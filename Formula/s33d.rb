class S33d < Formula
    desc "A beautiful, fast BIP39 mnemonic generator"
    homepage "https://github.com/rittikbasu/s33d"
    license "MIT"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/rittikbasu/s33d/releases/download/v0.3.0/s33d-macos-x86_64"
        sha256 "7067cdefcdbc01bc0ef854e9b2ccbfc316d155c8fb009b0669bddfa6b8f2a708"
      else
        url "https://github.com/rittikbasu/s33d/releases/download/v0.3.0/s33d-macos-aarch64"
        sha256 "3a936ad87b6b4d46024f147044275df082955287129c5863cd7a42140f387666"
      end
    end
  
    on_linux do
      url "https://github.com/rittikbasu/s33d/releases/download/v0.3.0/s33d-linux-x86_64"
      sha256 "8155eb28ba4425c7af4e7a5e862414d8ab5057966b13089bfb84f1a65ade6398"
    end
  
    def install
      bin.install Dir["s33d*"].first => "s33d"
    end
  
    test do
      assert_match "s33d", shell_output("#{bin}/s33d --help")
    end
  end