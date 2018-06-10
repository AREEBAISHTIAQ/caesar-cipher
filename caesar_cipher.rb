
def caesar(string,int)
 large_letters = ("A".."Z").to_a
 small_letters = ("a".."z").to_a

    cipher = ""
    string.each_char do |letter|
        if large_letters.index(letter) == nil
            if small_letters.index(letter) == nil
                cipher += letter
            else
                cipher += small_letters[(small_letters.index(letter) + int) % 26]
            end
        else
            cipher += large_letters[(large_letters.index(letter) + int) % 26]
        end
    end
    cipher
end

puts caesar("what a string", 5)