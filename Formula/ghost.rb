class Ghost < Formula
    desc "A simple general purpose programming language"
    homepage "https://github.com/axiom-labs/ghost"
    url "https://github.com/axiom-labs/ghost"
    sha256 "ee8012ae5eff140e31212edfd59609f001fb6f2e6393751d08c80660661b6bdb"

    def install
        system "ls"
        system "make", "all"
        bin.install "dist/ghost"
    end

    test do
        (testpath/"hello.ghost").write <<~EOS
            "Hello, world!"
        EOS
        assert_equal "Hello, world!", shell_output("#{bin}/ghost hello.ghost")
    end
end