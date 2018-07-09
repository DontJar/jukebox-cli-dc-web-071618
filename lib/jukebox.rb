require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
# puts "Enter your name:"
# users_name = gets.chomp
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (songs)
  songs.each_with_index do |music, index|
    puts "#{index+1}. #{music}"
  end
end

def play (songs)
song_choice = nil
  puts "Please enter a song name or number:"
    song_choice = gets.chomp
      if song_choice == song_choice.to_i && song_choice < 10
        puts "Playing #{songs[song_choice-1]}"
      if songs.include?(song_choice)
        puts "Playing #{song_choice}"
      else
       puts "Invalud input, please try again"
     end
   end
 end

def exit_jukebox
  puts "Goodbye."
end

def run(songs)
  user_selection = nil
    until user_selection == "exit"
      help
    puts "Please enter a command:"
      user_selection = gets.chomp
    case user_selection
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    end
  end
end
