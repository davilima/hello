set :stage, :staging

role :app, %w{127.0.0.1}
role :web, %w{127.0.0.1}
role :db,  %w{127.0.0.1}

server '127.0.0.1', user: 'davilima', roles: %w{web app}
set :branch, "staging"
