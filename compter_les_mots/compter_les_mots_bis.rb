def get_file_as_string(filename)
    data = " "
    f = File.open(filename, "r")
    f.each do |line|
        data += line
    end
    return data
end

def check_swear(corpus, dictionnary)
    
    tab = {}
    corpus .downcase!
    tab = corpus.split(/\W+/)
    tab.delete("")
    corpus = tab.join(" ")
    dictionnary.each do |word|
        count = corpus.scan(word).count
        puts "#{word} : #{count}" if count > 0
    end
end

corpus = get_file_as_string "t8.shakespeare.txt"
dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
puts "La liste des mots communs: "
check_swear(corpus, dictionnary)

swear_word = get_file_as_string "swearWords.txt"


dictionnary = []
dictionnary = swear_word.split
puts "La liste des gros mots: "
check_swear(corpus, dictionnary)
