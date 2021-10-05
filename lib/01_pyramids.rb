def which_pyramid
  puts "Quel type de pyramide veux-tu ? (half, full, wtf)"
  print ">"
  input = gets.chomp
  while (input != "half") && (input != "full") && (input != "wtf")
    puts "Choisis parmis les trois types de pyramides uniquement : half, full, wtf"
    print ">"
    input = gets.chomp
  end
  return input
end

def get_floors(type_pyramid)
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print ">"
  floors = gets.chomp.to_i
  if type_pyramid == "wtf"
    while (floors < 1) || (floors > 25) || floors.even?
      puts "Choisis un nombre d'étages impair compris entre 1 et 25"
      print ">"
      floors = gets.chomp.to_i
    end
  else
    while (floors < 1) || (floors > 25)
      puts "Choisis un nombre d'étages compris entre 1 et 25"
      print ">"
      floors = gets.chomp.to_i
    end
  end
  puts "Voici la pyramide :"
  return floors
end

def half_pyramid (floors)
  n = 1
  while n <= floors
    j = 1
    while j <= floors - n
      print " "
      j = j + 1
    end
    while j <= floors
      print "#"
      j = j + 1
    end
    print "\n"
    n = n + 1
  end
end

def full_pyramid (floors)
  n = 1
  while n <= floors
    j = 1
    while j <= floors - n
      print " "
      j = j + 1
    end
    while j <= floors + n - 1
      print "#"
      j = j + 1
    end
    print "\n"
    n = n + 1
  end
end

def full_reverse_pyramid (floors)
  n = floors - 1
  while n > 0
    j = 1
    while j <= floors - n
      print " "
      j = j + 1
    end
    while j <= floors + n - 1
      print "#"
      j = j + 1
    end
    print "\n"
    n = n - 1
  end
end

def wtf_pyramid(floors)
  full_pyramid((floors / 2) + 1)
  full_reverse_pyramid((floors / 2) + 1)
end

def process
  input = which_pyramid
  floors = get_floors(input)
  if input == "half"
    half_pyramid(floors)
  elsif input == "full"
    full_pyramid(floors)
  else
    wtf_pyramid(floors)
  end
end

process