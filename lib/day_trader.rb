def day_trader(x)
    prix = x	
    marge = 0
    prixA = 0
    prixR = 0
   
     for i in (0...prix.length)
        for j in (i...prix.length)
          if prix[j] - prix[i] > marge
             marge = prix[j] - prix[i]
             prixA = i
             prixR = j
          end	
         end	
      end
   return "[#{prixA},#{prixR}]: $#{prix[prixR]} - $#{prix[prixA]} = $#{marge}"
  end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
#=> [1,4]  # $15 - $3 == $12