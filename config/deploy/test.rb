set :stage, :local
set :server_name, "10.3.47.62"

set :server_domain_name, "e.wltest.com"
set :repo_url, 'https://github.com/soarpatriot/eyes.git'
#set :repo_url, 'git@github.com:soarpatriot/eyes.git'
set :branch, "master"

set :log_level, :debug
set :deploy_to, "/data/www/eyes"

set :use_sudo, true
set :thin_config, "#{shared_path}/config/thin.yml"
set :thin_pid, "#{shared_path}/tmp/pids/thin.0.pid"

set :sidekiq_config, "#{shared_path}/config/sidekiq.yml" 
set :sidekiq_pid, "#{shared_path}/tmp/pids/sidekiq.pid" 


# set :password, ask('Server password', nil)
# server fetch(:server_name), user: 'deploy', port: 22, password: fetch(:password), roles: %w{web app db}

server fetch(:server_name), user: "deploy",password: "deploy", roles: %w{web app db}


