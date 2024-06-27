local triangle = {}

function isTriangle(a, b, c)
	if a <= 0 or b <= 0 or c <= 0 then
		return false
	end

	local ab = a + b
	local ac = a + c
	local bc = b + c

	return ab >= c and ac >= b and bc >= a
end

function triangle.kind(a, b, c)
	assert(isTriangle(a, b, c), "Input Error")

	if a == b and b == c then
		return "equilateral"
	end

	if a == b or b == c or a == c then
		return "isosceles"
	end

	return "scalene"
end

return triangle
