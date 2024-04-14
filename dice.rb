require "sinatra"
require "sinatra/reloader"

get ("/") do
  "Hello World"
  "I am ready to get home"
end
get ("/zebra") do
  "we must add a route for every one! Is it working?"
end

get ("/wgrieger") do 
  "hello will, nice to see you here. I think tis works "
end 

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end

#2x ten sides
get ("/dice/2/10") do
  first_die= rand(1...6)
  second_die= rand(1...6)
  sum= first_die + second_die

  outcome= "you rolled #{first_die} and #{second_die} for total of #{sum}"

  " <h1> Hello, world! </h1>
  <p> #{outcome} </p>"
end
