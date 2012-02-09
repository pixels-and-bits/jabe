#############################################################
# Application
#############################################################
set :application, "upgnome"

#############################################################
# Settings
#############################################################

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

set :deploy_via, :remote_cache
set :rake, '/usr/local/bin/bundle exec rake'
set :bundle, '/usr/local/bin/bundle exec'
set :normalize_asset_timestamps, false

#############################################################
# Servers
#############################################################

set :user, 'deploy'
set :use_sudo, false
set :gateway, 'gate.pixels-and-bits.com'

role :web, 'web.pixels-and-bits.com'
role :app, 'app2.pixels-and-bits.com'
role :db,  'app2.pixels-and-bits.com', :primary => true

#############################################################
# Git
#############################################################

set :scm, :git
set :scm_user, 'deploy'
set :repository, "git@github.com:UnderpantsGnome/#{application}.git"
set (:deploy_to) { "/var/webapps/#{application}" }
set :deploy_via, :remote_cache
set :scm_verbose, true

#############################################################
# hooks
#############################################################
after 'deploy:update_code', 'deploy:prep_env'
after 'deploy:update_code', 'deploy:migrate'
after 'deploy', 'deploy:cleanup'

#############################################################
# recipes
#############################################################

namespace :deploy do
  desc "Do this once we get the code up"
  task :prep_env, :roles => :app, :except => { :no_release => true } do
    run "cp #{shared_path}/config/*.yml #{release_path}/config/"
    run "cd #{release_path} && LANG=\"en_US.UTF-8\" LC_ALL=\"en_US.UTF-8\" /usr/local/bin/bundle install --quiet --without development:test --path=#{shared_path}/gems"
    run "cd #{release_path} && RAILS_ENV=#{rails_env} #{rake} assets:precompile"
  end

  # Restart passenger on deploy
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
end
