require "sinatra"
#pp "go!"
get ("/") do
  "Hello World"
  "I am ready to get home"
end
get ("/zebra") do
  "we must add a route for every one!"
end
