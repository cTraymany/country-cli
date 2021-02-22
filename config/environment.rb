# this file accepts everything we must require so we're not
# requiring everything on top of all other files!

require 'pry'
require 'httparty'

# .rb at the end of files are not required in ruby files
# one dot means "look for a file in the current folder."
# two dots mean "look in a file above/before the current folder"
require_relative '../lib/api.rb'
require_relative '../lib/cli.rb'
require_relative '../lib/country.rb'
