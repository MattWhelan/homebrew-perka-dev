require 'formula'

class PerkaDev < Formula
  homepage 'https://perka.github.com/perka'
  url 'https://github.com/MattWhelan/homebrew-perka-dev.git'
  version '0.1'

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

    system "sudo", "npm", "install", "-g", "gulp"
    system "sudo", "npm", "install", "-g", "grunt-cli"
  end
end
