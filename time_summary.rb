puts '-----------------------------------------------------'
puts 'Enter month number to report'
month = gets.chomp

filename = "timesheet-#{month}.txt"

WEEKLY_HOURS = 12

if File.file?(filename)
  minutes = []
  File.open(filename, 'r').each_line do |log|
    minutes << log.gsub(/Logged /,'').gsub(/minutes.*/,'').to_i
  end

  target_minutes_per_month = WEEKLY_HOURS * 60 * 4.3

  total_minutes = minutes.reduce(:+)
  puts ''
  puts "Total time for month #{month} is #{total_minutes} minutes"
  puts "Remaining time is #{(target_minutes_per_month - total_minutes).round(0)} minutes"
  puts '-----------------------------------------------------'
else
  puts 'You do not have time logged for that month'
end

