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

def help
  puts "I accept the following commands
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end


def play(songs)
  puts "Please enter the number or full name of a track."
  song_req = gets
  # song_req = song_req[(0..-2)]
  puts song_req

  if song_req.length == 1
    puts "Playing #{songs[song_req.to_i - 1]}"
  elsif songs.include?(song_req)
    puts "Playing #{song_req}"
  else
    puts "Invalid input, please try again"
  end
end


def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index}. #{song}"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  puts "Please enter a command"
  cmd = gets
  
  if cmd == "help"
    help
    run(songs)
  elsif cmd = list
    list(songs)
    run(songs)
  elsif cmd == "play"
    play(songs)
    run(songs)
  elsif cmd == "exit"
    exit_jukebox
  else
    puts "Not a valid command."
    run(songs)
  end
end

run(songs)