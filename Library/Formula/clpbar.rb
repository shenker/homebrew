require 'formula'

# FIXME: right now this clobbers the 'bar' formula

class Clpbar < Formula
  url 'http://sourceforge.net/projects/clpbar/files/clpbar/bar-1.11.1/bar_1.11.1.tar.gz/download'
  homepage 'http://clpbar.sourceforge.net/'
  md5 '4836a9767cbfb9c0b16020d23b4b5e91'

  def install
    system "./configure", "--disable-debug",
	"--prefix=#{prefix}",
    	"--disable-dependency-tracking"
    system "make"
    system "make install"
  end
end
