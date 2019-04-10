class Book
# write your code here

attr_reader :title

def title=(new_title)
    words = new_title.split(" ")
    small_words = ['the', 'and', 'if', 'or', 'of', 'over', 'a', 'an', 'in']
    words.each do |word|
        if (word == words.first)
            word.capitalize!
        elsif (small_words.include?(word.downcase))
            word.downcase!
        else
            word.capitalize!
        end
    end
    @title = words.join ' '
end

end
