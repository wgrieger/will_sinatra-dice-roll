require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get ("/") do
  erb(:elephant)
end

get ("/zebra") do
  "we must add a route for every one! Is it working?"
end

get ("/wgrieger") do 
  "hello will, nice to see you here. Things are working"
end 



#2x ten sides
get ("/dice/2/10") do
  first_die= rand(1...10)
  second_die= rand(1...10)
  sum= first_die + second_die

  outcome= "you rolled #{first_die} and #{second_die} for total of #{sum}"

  " <h1> Hello, world! </h1>
  <p> #{outcome} </p>"
end

#2x six sides
get ("/dice/2/6") do
  first_die= rand(1...6)
  second_die= rand(1...6)
  sum= first_die + second_die

  outcome= "you rolled #{first_die} and #{second_die} for total of #{sum}"

  "<h1> 2x 6sides </h1>
  <p> outcome </p>"

end

#1x 20 sides
get ("/dice/1/20") do
  first_die= rand(1...20)


  outcome= "you rolled #{first_die} "
  
  "<h1> 1x 20 sides </h1>
  <p> #{outcome} </p>"

end
