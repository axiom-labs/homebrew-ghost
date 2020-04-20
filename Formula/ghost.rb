class Ghost < Formula
    desc "A simple general purpose programming language"
    homepage "https://github.com/axiom-labs/ghost"
    url "https://github.com/axiom-labs/ghost", :tag => "v0.0.1"

    devel do
        url "https://github.com/axiom-labs/ghost.git", :branch => "master"
    end

    def install
        system "make"
        bin.install_symlink "dist/ghost"
    end

    test do
        (testpath/"hello.ghost").write <<~EOS
            "Hello, world!"
        EOS
        assert_equal "Hello, world!", shell_output("#{bin}/ghost hello.ghost")
    end
end