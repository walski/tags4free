# -*- ruby -*-

require 'rubygems'
require 'hoe'
require 'httparty'
require './lib/tags_4_free.rb'

Hoe.new('tags4free', Tags4Free::VERSION) do |p|
  p.rubyforge_name = "kickassrb"
  p.name = "tags4free"
  p.author = "Thorben Schröder"
  p.description = "Free tag extraction from content using Yahoo! search API."
  p.email = 'thorben@fetmab.net'
  p.summary = "Free tag extraction from content using Yahoo! search API."
  p.remote_rdoc_dir = '' # Release to root
  p.changes = p.paragraphs_of('History.txt', 0..1).join("\n\n")
  p.extra_deps << ['httparty'," >=0.1.3"]
end

# vim: syntax=Ruby
