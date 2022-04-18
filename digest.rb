require 'digest'

puts "Введите слово или фразу для шифрования:"
phrase = STDIN.gets.chomp

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"

answer = STDIN.gets.to_i

until answer.between?(1, 2)
  puts "Выберите 1 или 2"
  answer = STDIN.gets.to_i
end

case answer
when 1 then puts Digest::MD5.hexdigest(phrase)
when 2 then puts Digest::SHA1.hexdigest(phrase)
end
