require 'formula'

class Ipopt < Formula
  homepage 'https://projects.coin-or.org/Ipopt'
  url 'http://www.coin-or.org/download/source/Ipopt/Ipopt-3.10.2.tgz'
  head 'https://projects.coin-or.org/svn/Ipopt/trunk', :using => :svn
  md5 'e647a49a80a03f2682db583e00aa520b'

  depends_on 'pkg-config' => :build

  def install
    ENV.fortran
    ### added for gcc 4.7
    ENV.enable_warnings
    ENV['CC'] = 'gcc-4.7'
    ENV['CXX'] = 'g++-4.7'
    ENV['FC'] = 'gfortran-4.7'
    ENV['F77'] = 'gfortran-4.7'
    ENV['LD'] = 'gcc-4.7'
    ###
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    system "make test"
    ENV.deparallelize # Needs a serialized install
    system "make install"
  end
end
