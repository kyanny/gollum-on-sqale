#!/usr/bin/env ruby
$LOAD_PATH << File.expand_path(File.join(__FILE__, 'lib'))
require 'rubygems'
require 'gollum'
require 'gollum/frontend/app'

gollum_path = File.expand_path(File.join(File.dirname(__FILE__), '..', 'wiki')) # CHANGE THIS TO POINT TO YOUR OWN WIKI REPO
Precious::App.set(:gollum_path, gollum_path)
Precious::App.set(:default_markup, :markdown) # set your favorite markup language
Precious::App.set(:wiki_options, {:universal_toc => false})
run Precious::App
