$dial = 50
$count = 0

def turn_dial(turn)
  direction = turn[0]
  amount = turn.delete(direction).to_i

  if direction == "L"
    for counter in (1..amount)
      $dial = $dial - 1
      
      if $dial % 100 == 0
        $count += 1
      end
    end
    
    return $dial
  end
  
  for counter in (1..amount)
    $dial = $dial + 1
      
    if $dial % 100 == 0
      $count += 1
    end
    

  end
  return $dial
end

input = File.readlines("input.txt")


for turn in input
  turn_dial(turn)
end

puts $count
