#!/usr/bin/env ruby

# Usage:
#   ruby install.rb

Dir["./**/*.sake"].each do |f|
  `sake -i #{f}`
end