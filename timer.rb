def prompt
  gets.chomp
end

def log_time
  Time.now
end

def display_time(t)
  t.strftime('%m-%d-%y %R')
end

File.open('timesheet.txt','a') do |f|
  puts 'Start now?'
  prompt

  time_started = log_time

  puts "Started at #{display_time(time_started)}"
  puts 'Stop the timer?'
  prompt

  time_ended = log_time
  minutes = (time_ended - time_started)/60
  puts "Total time worked is #{minutes.round(0)} minutes."

  f.write "Logged #{minutes.round(0)} minutes from #{display_time(time_started)} to #{display_time(time_ended)}"
  f.write "\n"
end

