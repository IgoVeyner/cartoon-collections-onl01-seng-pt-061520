def roll_call_dwarves(name)
  name.each_with_index {|dwarf, index| puts "#{index + 1}.  #{dwarf}"}
end

def summon_captain_planet(name)
  name.map! {|name| name.capitalize + "!"}
end

def long_planeteer_calls(words)
  words.any? {|word| word.length > 4}
end

def find_the_cheese(search_this)
  cheese_types = ["cheddar", "gouda", "camembert"]
  
  # This was my answer, i should have just used the find include methods
  # search_this.collect {|array| 
  #   i = 0
  #   while i < cheese_types.length
  #     if cheese_types[i] == array
  #       return array
  #     end
  #     i += 1
  #   end
  # }
  # return nil

  search_this.find do |maybe_cheesey|
    cheese_types.include?(maybe_cheesey)
  end
end
