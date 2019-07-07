# typically server config is:
#server 'git@github.com:davilima/hello.git', roles: %w{app web}, user: 'davilima81@gmail.com', key: '~/.ssh/id_rsa.pub'
#server 'localhost', :app, :web, :db
# localhost config is:
#server 'localhost', roles: %w{app web} # no need to set SSH configs.

role :app, "hello"

set :use_sudo, false
set :application, 'hello'     # you'll need to specify an app name
set :repository, "git@github.com:davilima/hello.git"
set :scm, :none
set :deploy_to, "/home/davilima/hello/deploy/"   # the destination dir
set :deploy_via, :copy

# override deploy:restart since this isn't a Rails app
namespace :deploy do
  task :restart do
    # no-op
  end
end
