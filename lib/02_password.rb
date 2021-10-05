def sign_up
  puts "Bonjour, veuillez créer un mot de passe pour vous connecter."
  print "> "
  password = gets.chomp
  return password
end

def login(password)
  puts "Veuillez entrer votre mot de passe pour vous connecter."
  print "> "
  input = gets.chomp 
  while input != password
    puts "Erreur de mot de passe, veuillez réessayer."
    print "> "
    input = gets.chomp
  end
end

def welcome_screen
  puts "Bienvenue dans votre zone secrète"
  puts "Secret 1 : **Spoiler** À la fin de fight club on apprend que Brad Pitt est le même personnage que Edward Norton"
  puts "Secret 2 : **Spoiler** Dark Vador est en fait le père de Luke dasn Star Wars"
end

def process
  password = sign_up
  login(password)
  welcome_screen
end

process