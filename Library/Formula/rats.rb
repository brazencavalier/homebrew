require 'formula'

class Rats < Formula
  url 'http://www.fortify.com/servlet/download/public/rats-2.3.tar.gz'
  homepage 'http://www.fortify.com/security-resources/rats.jsp'
  md5 '339ebe60fc61789808a457f6f967d226'

  def install
    # Have to set man path to install to "$PREFIX/share/man" directory.
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}", "--mandir=#{prefix}/share/man"
    system "make install"
  end
end
