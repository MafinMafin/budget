# config valid only for Capistrano 3.1

set :application, 'budget2'
set :repo_url, 'git@github.com:gajewsky/calincome.git'

set :deploy_to, '/home/deploy/budget'

set :linked_files, %w{config/database.yml config/secrets.yml}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :bundle_binstubs, nil
set :rvm_ruby_version, '2.4.3p205'

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end
