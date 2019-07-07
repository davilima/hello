#set :stage, :staging

#role :app, %w{127.0.0.1}
#role :web, %w{127.0.0.1}
#role :db,  %w{127.0.0.1}

#server '127.0.0.1', user: 'davilima', roles: %w{web app}
#set :branch, "staging"

set :application, "hello"

# Source code
set :scm, :git
set :repository, "git@github.com:davilima/hello.git"
set :branch, "stable"
set :repository_cache, "git_cache"
set :deploy_via, :remote_cache
set :ssh_options, { :forward_agent => true }

# Deployment servers
role :app, "localhost"
role :web, "localhost"
role :db,  "localhost", :primary => true
set :deploy_to, "/home/davilima/deploy/#{application}"
