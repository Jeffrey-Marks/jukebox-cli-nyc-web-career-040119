def songs
  array = [
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
  array
end

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
    puts "That is not a song"
  end
end