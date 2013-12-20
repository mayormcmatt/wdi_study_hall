arr = [1, 5, 23, 43, 98]
arr2 = []

length = arr.size
i = 0
i = length - 1

while i >= 0
	arr2.push arr.pop
	i -= 1
end

#Another solution
length = arr.size
counter = 0
while counter < length
	arr.push arr.shift
	count += 1
end