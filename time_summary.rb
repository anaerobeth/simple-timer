puts 'Enter month to report'
month = gets.chomp
filename = "timesheet-#{month}.txt"
nums = []
File.open(filename, 'r').each_line do |log|
  nums << log.gsub(/Logged /,'').gsub(/minutes.*/,'').to_i
end

target = 12 * 60 * 4.3
total = nums.reduce(:+)
puts "Total time for month #{month} is #{total} minutes"
puts "Remaining time is #{(target - total).round(0)} minutes"
