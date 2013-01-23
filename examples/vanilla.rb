# run with cap -f vanilla.rb
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'capistrano'
require 'capistrano/template'

set :template_path, 'templates'
set :name, 'world'


desc "place a rendered template in /tmp/hello_world"
task :test_render, :roles => :app do
  puts template.render('hello_world.erb')
end
