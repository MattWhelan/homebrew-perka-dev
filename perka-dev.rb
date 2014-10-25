require 'formula'

class PerkaDev < Formula
  homepage 'https://perka.github.com/perka'
  url 'https://github.com/MattWhelan/homebrew-perka-dev.git'
  version '0.11'

  depends_on 'pcre'
  depends_on 'v8'
  depends_on 'node'

  def install
    system "sudo", "gem", "uninstall", "rkelly"
    system "sudo", "gem", "install", "rkelly-remix"
    system "sudo", "gem", "install", "closure-compiler", "yui-compressor"
    system "sudo", "gem", "install", "-v", "3.3.9", "sass"
    system "sudo", "gem", "install", "-v", "0.25.1", "scss-lint"
    system "sudo", "gem", "install", "hpricot", "premailer"

    system "#{HOMEBREW_PREFIX}/bin/npm", "install", "-g", "gulp"
    system "#{HOMEBREW_PREFIX}/bin/npm", "install", "-g", "grunt-cli"

    bin.install "bin/perka-first-time"
  end
end
