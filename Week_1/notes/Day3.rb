#hello_hash = {
#:english => "Hey"
#:spani => "Hola"
#:port => "oi"}

#puts hello_hash[:english]

=begin
example = {
	:apps => [
		0,
		1,
		{ :ingredient => [
			0, 
			{:name => "bacon"} ] }
	]
}

puts example[:apps][2][:ingredient][1][:name]

=end
hash = {
	:wat => [
		0,
		1,
		{:wut => [0,[
			[0,1,2,3,4,5,6,7,8,{:bbq => "yum"}]]
		]} 
	]
}


puts hash[:wat][2][:wut][1][0][9][:bbq]	



