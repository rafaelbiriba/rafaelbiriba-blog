set :application, "biribablog_jekyll"

set :repository,  "."

role :web, "45.55.169.72"

set :deploy_via, :copy

set :copy_cache, true

set :copy_exclude, Dir["**/{.*,*}"].reject{ |f| f =~ /\_site/  }

set :user, "deploy"

set :use_sudo, false

set :deploy_to, "/www/#{application}"

set :keep_releases, 2

namespace :deploy do
  [:start, :stop, :restart, :finalize_update].each do |t|
    desc "#{t} task is a no-op with jekyll"
    task t, :roles => :app do ; end
  end

  desc "Run jekyll to update site before uploading"
  task :update_jekyll do
    %x(rm -rf _site/* && bundle exec jekyll build)
  end

  task :delete_revision_file do
    run "cd #{deploy_to}/current/; rm -f REVISION"
  end

  task :rename_jekyll_directory do
    run "cd #{deploy_to}/current/; mv _site/ public/"
  end
end

before "deploy:update", "deploy:update_jekyll"
after "deploy:update", "deploy:rename_jekyll_directory"
after "deploy:update", "deploy:cleanup"
after "deploy:cleanup", "deploy:delete_revision_file"
