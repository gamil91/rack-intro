require 'rack'


# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.


my_server = Proc.new do
  [200, { 'Content-Type' => 'text/html' }, ['<!DOCTYPE html>
  <html>
  
  <head>
      <title>Alexs Blog</title>
  </head>
  
  <body>
      <h1>The Journey</h1>
          <p>Filipino American in my late 20s trying to continously learn to better myself.</p>
  
      <h2>Lessons</h2>
          <p>At times when you want to give up are the times when you really should keep trying harder.</p>
  </body>
  
  <!--This should never print-->
  
  
  </html>']]
end

run my_server