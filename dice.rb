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
