require 'rack'

app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  res['Content-Type'] = 'text/html'

  if req.path == '/i/love/app/academy'
    res.write("I love app academy!")
  else
    res.write("Nothing to see here.")
  end

  res.finish
end

Rack::Server.start(
  app: app,
  Port: 3000 #the p in Port needs to be capitalized or you wont get a connection
)
