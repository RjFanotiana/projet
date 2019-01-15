def caesar_cipher(letter­, number)
    textlength = letter.length
    vide= " "
    i=0

    while i<textlength
    vide[i] = letter[i].ord.to_i
        if vide[i] >=65 && vide[i] < 91
            vide[i] = ((vide[i] -65 )+number )%26 )+65
            vide[i] = vide[i].chr
        elsif vide[i]>=97 && vide[i] < 121
            vide[i] = ((vide[i] -97 )+number )%26 )+97
            vide[i] = vide[i].chr	
        else
            vide[i] = vide[i].chr
        end
    i+=1
    end
    print vide
end

caesar_cipher("What a string",5)