def welcome_msg
  puts "Bienvenue dans le jeu de l'escalier."
  puts "Vous allez lancer un dé pour monter les marches d'un escalier."
  puts "Une fois en haut des escaliers le jeu s'arrête."
  puts "Veuillez taper jouer ou moyenne"
  print "> "
  input = gets.chomp
  while (input != "jouer" && input != "moyenne")
    puts "Veuillez taper jouer ou moyenne"
    print "> "
    input = gets.chomp
  end
  return input
end

def average_finish_time
  dice_throws = 0
  100.times do 
    steps = 1
    dice_value = 0
    while steps != 10
      dice_throws = dice_throws + 1
      dice_value = rand (1..6)
      if dice_value >= 5
        steps = steps + 1
      elsif (dice_value == 1 && steps > 1)
        steps = steps - 1
      end
    end
  end
  puts "Le nombre moyen de lancé de dés par partie est #{dice_throws / 100}"
end


def play_game
  steps = 1
  dice_value = 0
  puts "Vous êtes actuellement à la marche #{steps} sur 10." 
  while steps != 10
    dice_throw = ""
    while dice_throw != "dice"
      puts "Veuillez envoyer un dé en tapant dice."
      print ">"
      dice_throw = gets.chomp
    end
    dice_value = rand (1..6)
    puts "Votre dé est #{dice_value}, et votre marche est la numéro #{steps}"
    if dice_value >= 5
      steps = steps + 1
      puts "Vous montez d'une marche, à la marche numéro #{steps}"
    elsif dice_value >= 2 || (dice_value == 1 && steps == 1)
      puts "Vous restez à la marche numéro #{steps}"
    else 
      steps = steps - 1
      puts "Vous descendez d'une marche, à la marche numéro #{steps}"
    end
  end
end

def finish_msg
  puts "Félicitations, vous êtes arrivé en haut de l'escalier"
end

def process
  what = welcome_msg
  if (what == "jouer")
    play_game
    finish_msg
  else
    average_finish_time
  end 
end

process