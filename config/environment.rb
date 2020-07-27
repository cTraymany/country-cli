# this file accepts everything we must require so we're not
# requiring everything on top of all other files!

require 'pry'
require 'httparty'

# .rb at the end of files are not required in ruby files
# one dot means "look for a filder in the current folder."
# two dots mean "look in a folder above the current folder"
require_relative '../lib/api.rb'
require_relative '../lib/cli.rb'
require_relative '../lib/astronomy-photo.rb'
