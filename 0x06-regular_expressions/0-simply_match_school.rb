#!/usr/bin/env ruby

if ARGV.empty?
  puts ""
else
  input_string = ARGV[0]
  
  matches = input_string.scan(/School/)
  
  puts matches.join
end
