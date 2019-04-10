#write your code here
def echo (text)
    text
end

def shout (text)
    text.upcase
end

def repeat (text, *numRepeat)
    if (numRepeat.count < 1)
        outText = text + " " + text
    else
        if (numRepeat[0] < 1)
            numRepeat[0] = 1
        end

        outText = text + " " + text
        for counter in 3..numRepeat[0]
            outText = outText + " " + text
        end
    end
    outText
end

def start_of_word (text, number)
    text[0..number-1]
end

def first_word (text)
    text.split.first
end

def titleize (text)
    words = text.split
    small_words = ['the', 'and', 'if', 'or', 'of', 'over']
    firstWord = true
    words.each do |word|
        if firstWord == true
            word.capitalize!
            firstWord = false
        elsif (small_words.include?(word.downcase))
            word.downcase!
        else
            word.capitalize!
        end
    end
    words.join ' '
end
