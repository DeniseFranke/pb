#!/usr/bin/env ruby
require 'cfmx_compat.rb'

key = "secretkey"

line_num=0
text=File.open('xxx.txt').read
text.gsub!(/\r\n?/, "\n")
text.each_line do |line|
	
	encrypted = CfmxCompat.encrypt(line, key, "uu")
	print "\n"
	print "#{encrypted}"
	decrypted = CfmxCompat.decrypt(encrypted, key, "uu")
	print "decrypted uu: "
	print decrypted
end
#	encrypted = CfmxCompat.encrypt(line, key, "hex")
#	print "\n"
#	print "#{encrypted}"
#	print "\n"
#	decrypted = CfmxCompat.decrypt(encrypted, key, "hex")
#	print "decrypted uu: "
#	print decrypted

#	print "\n"
#	encrypted = CfmxCompat.encrypt(line, key, "base64")
#	print "#{encrypted}"
#	print "\n"
#	decrypted = CfmxCompat.decrypt(encrypted, key, "base64")
#	print "decrypted base64: "
#	print decrypted
