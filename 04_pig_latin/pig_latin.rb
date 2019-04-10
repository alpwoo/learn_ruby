#write your code here
def checkFirstLetter (text)
    if (/[[:upper:]]/ =~ text.chars.first)
        return true
    else
        return false
    end
end

def checkLastLetter (text)
    if (/[[:punct:]]/ =~ text.chars.last)
        return text.chars.last
    else
        return nil
    end
end

def translate(text)
    words = text.split
    words.each do |word|
        if (checkFirstLetter(word) == true)
            capitalization = true
            word.downcase!
        else
            capitalization = false
        end

        punctuation = checkLastLetter (word)

        if (punctuation != nil)
            word.slice!(punctuation)
        end

        if word.start_with?('a','e','i','o','u')
            word<<'ay'
        else
            pos=nil
            first_vowel_pos = nil
            ['a','e','i','o','u'].each do |vowel|
                pos = word.index(vowel)

                if (pos != nil) 
                    #ignore u in qu
                    if (pos > 0)
                        if (word[pos-1].downcase == 'q')
                            pos = nil
                        end
                    end

                    if (pos != nil) and (first_vowel_pos != nil)
                        if (first_vowel_pos > pos)
                            first_vowel_pos = pos
                        end
                    elsif (pos != nil)
                        first_vowel_pos = pos
                    end
                end
            end

            if first_vowel_pos == nil
                #there are no vowels
                word<<'ay'
            else
                pre = word.partition(word[first_vowel_pos,1]).first
                word.slice!(pre)
                word<<pre+'ay'
            end
        end

        if (capitalization == true)
            word.capitalize!
        end

        if (punctuation != nil)
            word<<(punctuation)
        end

    end
    words.join ' '
end