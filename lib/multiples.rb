def is_multiple_of_3_or_5?(n)
  if n%3 == 0 or n%5 == 0
    answer = true
  else
    answer = false
  end

  return answer
end


def sum_of_3_or_5_multiples( n )
  sum = 0
  i = 0

  if n.is_a?(Integer) && n>0

    for i in (0..n-1)

      if is_multiple_of_3_or_5?( i )
        sum+= i
      end
    end  
    return sum
  else
    return 'Yo ! Je ne prends que les entiers naturels.'
    
  end
  
end

puts sum_of_3_or_5_multiples(1.23)


