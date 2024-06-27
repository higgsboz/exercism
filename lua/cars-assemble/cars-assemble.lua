local cars = {}

-- returns the amount of working cars produced by the assembly line every hour
function cars.calculate_working_cars_per_hour(production_rate, success_rate)
	return (production_rate * success_rate) / 100
end

-- returns the amount of working cars produced by the assembly line every minute
function cars.calculate_working_cars_per_minute(production_rate, success_rate)
	return cars.calculate_working_cars_per_hour(production_rate, success_rate) // 60
end

-- returns the cost of producing the given number of cars
function cars.calculate_cost(cars_count)
	local discount = cars_count // 10
	local rem = cars_count - (10 * discount)
	return (95000 * discount) + (rem * 10000)
end

return cars
