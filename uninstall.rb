#!/usr/bin/env ruby

# Usage:
#   ruby uninstall.rb

def name_to_task(name)
  name.split(".").first.gsub(/\//, ":")
end

Dir["**/*.sake"].each do |f|
  puts "Removing #{name_to_task(f)}"
  `sake -u #{name_to_task(f)}`
end