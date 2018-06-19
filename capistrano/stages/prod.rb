# Define roles, user and IP address of deployment server
# role :name, %{[user]@[IP adde.]}
set :ssh_options, { :forward_agent => true }
role :app, %w{deployer@206.189.102.195}

# Define server(s)
# Example:
# server '[your droplet's IP addr]', user: '[the deployer user]', roles: %w{[role names as defined above]}
# server '162.243.74.190', user: 'deployer', roles: %w{app}
server '206.189.102.195', user: 'deployer' , roles: %w{app}

# SSH Options
# See the example commented out section in the file
# for more options.
namespace :system do
desc "Install Composer"
    task :install_composer do
      on roles(:app) do
        within shared_path  do
            execute "php -r \"copy('http://getcomposer.org/composer.phar', '#{shared_path}/composer.phar');\" 1>&2"
        end
      end
    end

end