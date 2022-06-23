class OidcAgent < Formula
  desc "Manage OpenID Connect tokens on the command-line"
  homepage "https://github.com/indigo-dc/oidc-agent"
  url "https://github.com/indigo-dc/oidc-agent/archive/refs/tags/v4.3.0.tar.gz"
  sha256 "c173b2bcef50ec21ed30ee5eebc428c634bee7daa7e6d80dfd0ff91089eb3fe5"
  license "MIT"

  bottle do
    root_url "https://github.com/indigo-dc/homebrew-oidc-agent/releases/download/oidc-agent-4.3.0"
    sha256 cellar: :any, big_sur:  "907a4f3ca516ec71d9ab6a34e583b819954fd5629bb80d3ea6dbf71d7e40f214"
    sha256 cellar: :any, catalina: "d2c34185a53a5bd7db3fed7cf764fbe82133a502db9fe51257951ea87cf893f2"
  end

  depends_on "help2man" => :build
  depends_on "argp-standalone"
  depends_on "jq"
  depends_on "libmicrohttpd"
  depends_on "libsodium"
  depends_on "pkg-config"
  depends_on "qrencode"

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "true"
  end
end
