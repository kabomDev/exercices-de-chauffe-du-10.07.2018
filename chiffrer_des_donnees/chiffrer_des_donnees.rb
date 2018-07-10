def caesar_number(string, n = 1)
    alphabet = Array('a'.ord..'z'.ord)
    encrypter = Hash[alphabet.zip(alphabet.rotate(n))]
    string.downcase.chars.map {|x|
        alphabet.include?(x.ord)? ((x.ord - alphabet.min + n) % 26 + alphabet.min).chr : x }.join
        
    
end

puts caesar_number("What a string!", 5)