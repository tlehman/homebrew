require 'formula'

class St < Formula
  homepage 'https://github.com/nferraz/st#readme'
  url 'https://github.com/nferraz/st/archive/v1.0.1.zip'
  sha1 '7fea790b50c164bfd958dff31f5a1f97f565067b'

  def install
    system "perl", "Makefile.PL"
    system "make"
    system "make", "install"
  end

  test do
    system "st <(echo 12.0 41.9 37.99 13.3)"
  end
end
