=begin

> dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
> word_counter("below", dictionary)
=> {"below"=>1, "low"=>1}
> word_counter("Howdy partner, sit down! How's it going?", dictionary)
=> {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}

=end
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def word_counter(word, dictionary)
    i=0
    dictionary.each do |p|
        ctr= word.select{|x| x=~/ p[i] /}.count
        if ctr != 0
            puts " #{ p[i] } => #{ ctr } "
        end
        i+=1
    end
end

word_counter("below", dictionary)