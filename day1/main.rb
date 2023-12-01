#! /home/mchrist/.rbenv/shims/ruby

filename = ARGV[0]

values = []
File.open(filename, 'r') do |file|
  file.each_line do |line|
    digits = line.strip.gsub(/[^1-9]/, '')
    values << (digits[0] + digits[-1]).to_i
  end
end

puts values.sum
