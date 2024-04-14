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


#2x ten sides
get ("/dice/2/10") do
  first_die= rand(1...10)
  second_die= rand(1...10)
  sum= first_die + second_die

  @outcome= "you rolled #{first_die} and #{second_die} for total of #{sum}"

  erb(:two_ten)

end

#2x six sides
get ("/dice/2/6") do
  first_die= rand(1...6)
  second_die= rand(1...6)
  sum= first_die + second_die

  @outcome= "you rolled #{first_die} and #{second_die} for total of #{sum}"
  
  erb(:two_six)


end

#1x 20 sides
get ("/dice/1/20") do
  @first_die= rand(1...20)


  @outcome= "you rolled #{@first_die}"

  erb(:one_twenty)


end


get ("/dice/5/25") do
  first_die= rand(1...25)
  second_die= rand(1...25)
  third_die= rand(1...25)
  four_die= rand(1...25)
  fifth_die= rand(1...25)
  
  sum= first_die + second_die +third_die + four_die + fifth_die

  @outcome= "you rolled a  total of #{sum}"

  erb(:five_twentyfive)

end


get ("/dice/1/100") do
  @roll = []

  100.times do 
    die= rand(1...100)

  @roll.push(die)
end

@outcome = "you rolled: #{@roll}"

  erb(:one_hundred)

end
