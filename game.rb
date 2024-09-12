# Варіанти для гри
options = ["rock", "scissors", "paper"]

# Функція для визначення переможця
def determine_winner(player_choice, computer_choice)
  if player_choice == computer_choice
    "It's a tie!"
  elsif (player_choice == "rock" && computer_choice == "scissors") ||
    (player_choice == "scissors" && computer_choice == "paper") ||
    (player_choice == "paper" && computer_choice == "rock")
    "You win!"
  else
    "Computer wins!"
  end
end

loop do
  # Просимо гравця зробити вибір
  puts "Choose: rock, scissors, or paper. Type 'stop' to exit."
  player_choice = gets.chomp.strip.downcase # Очищуємо введений рядок

  # Перевіряємо на вихід з гри
  break if player_choice == "stop"

  # Перевіряємо, що введено коректний варіант
  unless options.include?(player_choice)
    puts "Invalid choice. Try again."
    next
  end

  # Комп'ютер робить випадковий вибір
  computer_choice = options.sample
  puts "Computer chose: #{computer_choice}"

  # Визначаємо переможця
  result = determine_winner(player_choice, computer_choice)
  puts result
end

puts "Game over."
