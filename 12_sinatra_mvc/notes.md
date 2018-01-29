# Sinatra Intro & MVC
- pattern of mvc
- activerecord is a wrapper that interacts with our database
  - models inherit from it so they can pull data from the db
- views are html pages responding to requests
- controllers go between view and models  
  - view is patron, client
  - controller is waiter
  - model is kitchen/chef
  - controller matches request and path
    - runs inner code
    - asks questions of the database
    - renders information for view
- keep our code modular and organized
- like all other conventions we want to know where things are located

#### Controller
- tell sinatra where view is located
- matches route and returns method
  - erb is a method that takes a symbol argument
  - parentheses are optional
- erb has access to instance variables defined in method scope
  - explicitly pull info from from db to pass information to template

#### Config
- environment
  - require bundler gem
    - bundler requires all gems
    - require all gem requires everything in app directory
      -  this is code you will sometimes see written out
  -  database connection
- config.ru
  - requires env
  - use ApplicationController as entry point to application
    - run is a sinatra method that knows how to set up a server using a class that inherits from SinatraBase
      - it knows how to respond to these requests

#### Layouts
  - sinatra renders layout templates for webpages
  - swap in and out smaller pieces of code called partials
  - can use a template engine to render different template types

#### REST
  - routing CRUD actions for websites
  - get requests need templates
  - post requests needs data
  - write out routes
  - representation state transfer
    - state of url represents the state of your data
    - post new
    - patch edit a piece
  - using an api you need predictable results with no side effects
    - routes either show or do
    - everything has one job

#### Building
- rakefile defines a console
- adapter keeps code modular and namespaced
- build a controller
- shotgun autoreloads for you 9393
- migrate, look at books
- template, tell it to use controller
- new error
- nest names
- how to show book after post, show need for redirect

#### Method Override
- a lot of frameworks only support get and post by default
