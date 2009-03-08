#!/usr/bin/env ruby

# Usage:
#   ruby install.rb

def name_to_task(name)
 name.split(".").first.gsub(/\//, ":")
end

Dir["**/*.sake"].each do |f|
  puts "Installing #{name_to_task(f)}"
  `sake -i #{f}`
end