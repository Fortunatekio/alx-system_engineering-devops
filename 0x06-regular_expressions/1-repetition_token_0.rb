#!/usr/bin/env ruby

input_string = ARGV[0]

pattern = /Holberton/i

matches = input_string.scan(pattern)

if matches.empty?
  puts 'No match'
else
  puts matches.join(',')
end
