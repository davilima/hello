# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "hello"
set :repo_url, "git@github.com:davilima/hello.git"
#set :repo_url, 'https://davilima:#dvfr27#@github.com/davilima/hello'

# Deploy to the user's home directory
set :deploy_to, "/home/deploy/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

# Only keep the last 5 releases to save disk space
set :keep_releases, 5

after :deploy, :'passenger:restart'

# Optionally, you can symlink your database.yml and/or secrets.yml file from the shared directory during deploy
# This is useful if you don't want to use ENV variables
# append :linked_files, 'config/database.yml', 'config/secrets.yml'

#set :deploy_to ,'/home/davilima/deploy/'
# Path of tests to be run, use array with empty string to run all tests
#set :tests, ['']

#namespace :deploy do
#  desc "Runs test before deploying, can't deploy unless they pass"
#  task :run_tests do
#    test_log = "log/capistrano.test.log"
#    tests = fetch(:tests)
#    tests.each do |test|
#      puts "--> Running tests: '#{test}', please wait ..."
#      unless system "bundle exec rspec #{test} > #{test_log} 2>&1"
#        puts "--> Aborting deployment! One or more tests in '#{test}' failed. Results in: #{test_log}"
#        exit;
 #     end
#      puts "--> '#{test}' passed"
#    end
#    puts "--> All tests passed, continuing deployment"
#    system "rm #{test_log}"
#  end

  # Only allow a deploy with passing tests to be deployed
#  before :deploy, "deploy:run_tests"
#end

#desc 'Runs rake db:seed'
#task :seed => [:set_rails_env] do
#  on primary fetch(:migration_role) do
#    within release_path do
#      with rails_env: fetch(:rails_env) do
 #       execute :rake, "db:seed"
 #     end
 #   end
 # end
#end

#namespace :deploy do
#  desc 'Restart application'
 # task :restart do
 #   on roles(:app), in: :sequence, wait: 5 do
 #     # Your restart mechanism here, for example:
 #     execute :touch, release_path.join('tmp/restart.txt')
 #   end
 # end
#end

#namespace :deploy do
 # desc 'Says a message when deployment is completed'
 # task :say do
 #   system("\\say Capistrano Deployment Completed! Good Job!")
 # end
#end

#after :finished, 'deploy:say'

#role :app, ""

#set :use_sudo, false
#set :application, 'hello'     # you'll need to specify an app name
#set :repository, "."
#set :scm, :none
#set :deploy_to, "/home/hello/deploy"   # the destination dir
#set :deploy_via, :copy

# override deploy:restart since this isn't a Rails app
#namespace :deploy do
#  task :restart do
#    # no-op
#  end
#end

#set :application, "my_app_name"
#set :repo_url, "git@example.com:me/my_repo.git"

#set :application, "hello"
#set :repo_url, "git@github.com:davilima/hello.git"

#set :deploy_to, '/home/deploy/hello'

#append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'
#append :linked_files, 'config/database.yml'
#append :linked_files, %w{config/master.key}

#set :migration_role, :app

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
