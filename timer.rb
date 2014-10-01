File.open('timesheet.txt','a') do |f|
  puts 'Start now?'
  gets.chomp

  time_started = Time.now
  puts "Started at #{time_started.strftime('%m-%d-%y %R')}"
  puts 'Stop the timer?'
  gets.chomp

  time_ended = Time.now
  minutes = (time_ended - time_started)/60
  puts "Total time worked is #{minutes.round(2)} minutes."

  f.write "Logged #{minutes.round(1)} minutes from #{time_started.strftime('%m-%d-%y %R')} to #{time_ended.strftime('%m-%d-%y %R')}"
  f.write "\n"
end

