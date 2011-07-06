require 'formula'

class Djvu2pdf <Formula
  url 'http://0x2a.at/site/projects/djvu2pdf/djvu2pdf-0.9.1.tar.gz'
  homepage 'http://0x2a.at/s/projects/djvu2pdf'
  md5 '47a77ec1693c352dda1cd7ced3f50c1c'

  depends_on 'djvulibre'
  depends_on 'ghostscript'

  def install
    system "chmod +x djvu2pdf"
    bin.install "djvu2pdf"
    man.install "djvu2pdf.1.gz"
  end
end
