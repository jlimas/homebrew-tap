class Mongoquery < Formula
  desc "Read-only MongoDB query CLI"
  homepage "https://github.com/jlimas/mongoquery"
  version "2026.11.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jlimas/mongoquery/releases/download/v2026.11.17.1/mongoquery_darwin_arm64.tar.gz"
      sha256 "a99cb92663032ce723e8d777051cdf0340f9ad2a065650eda30cf838b1ac8d3a"
    end
    on_intel do
      url "https://github.com/jlimas/mongoquery/releases/download/v2026.11.17.1/mongoquery_darwin_amd64.tar.gz"
      sha256 "17fd009482c6ce891282e531361ba1a0cdb2fe4895f6c11e42b737ef8a2e2a06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jlimas/mongoquery/releases/download/v2026.11.17.1/mongoquery_linux_arm64.tar.gz"
      sha256 "5718a242d85e8cf8c521d7772508265a59bce55920873f318015957071b23b51"
    end
    on_intel do
      url "https://github.com/jlimas/mongoquery/releases/download/v2026.11.17.1/mongoquery_linux_amd64.tar.gz"
      sha256 "698ebe3261fe1760abea148f5fefd020717ff8078a6fd2199afd400717ef6a85"
    end
  end

  def install
    bin.install "mongoquery"
    pkgshare.install "config.example.yaml"
  end

  test do
    assert_equal "mongoquery v#{version}", shell_output("#{bin}/mongoquery --version").strip
  end
end
