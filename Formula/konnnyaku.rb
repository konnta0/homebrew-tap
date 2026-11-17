class Konnnyaku < Formula
  desc "Local English and Japanese live captions with translation for macOS"
  homepage "https://github.com/konnta0/konnnyaku"
  url "https://github.com/konnta0/konnnyaku/releases/download/v0.1.1/konnnyaku-v0.1.1-aarch64-apple-darwin.tar.gz"
  sha256 "9cb5516eefabc68e41d9f9194cd2d516237649f83caabc86f446afdfad09bf92"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "konnnyaku"
    doc.install "README.md", "THIRD_PARTY_NOTICES.md"
  end

  def caveats
    <<~EOS
      Download the models once (about 2.5 GB):
        konnnyaku setup

      Models and captions are kept in:
        ~/Library/Application Support/konnnyaku

      Capturing another app's audio needs System Audio Recording permission
      for the terminal you start konnnyaku from.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/konnnyaku --version")
  end
end
