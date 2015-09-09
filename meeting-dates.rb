require "ice_cube"


schedule = IceCube::Schedule.new
schedule.add_recurrence_rule(
  IceCube::Rule.monthly.day_of_week(:thursday => [2])
)

schedule.next_occurrences(13).each do |occurrence|
	puts occurrence.strftime("%A, %B %d, %Y, 7:00 PM - 9:00 PM")
end
