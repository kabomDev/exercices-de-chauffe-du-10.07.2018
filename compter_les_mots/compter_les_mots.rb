dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]


def jean_michel_data(corpus, dictionnary)
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

jean_michel_data("below", dictionary) 

jean_michel_data("Howdy partner, sit down! How's it going?", dictionary)