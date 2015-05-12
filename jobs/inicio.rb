current_karma = 0

# :first_in sets how long it takes before the job is first run. In this case, it is run immediately
SCHEDULER.every '5s', :first_in => 0 do |job|
	last_karma     = current_karma
	current_karma  = rand(200000)
	
	send_event('karma', { current: current_karma, last: last_karma })
end