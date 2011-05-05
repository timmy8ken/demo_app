set :application, "demo_app"
set :repository,  "git@github.com:timmy8ken/demo_app"

set :scm, :git
set :user, "timmy8ken"
set :scm_passphrase, "st1nk3rs"
ssh_options[:forward_agent] = true
set :use_sudo, false
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :deploy_to, "/home/timmy8ken/ror.max8ken.com/apps/#{application}"
role :web, "ror.max8ken.com"                          # Your HTTP server, Apache/etc
role :app, "ror.max8ken.com"                          # This may be the same as your `Web` server
role :db,  "ror.max8ken.com", :primary => true # This is where Rails migrations will run



# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end