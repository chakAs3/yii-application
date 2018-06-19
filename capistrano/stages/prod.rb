# Define roles, user and IP address of deployment server
# role :name, %{[user]@[IP adde.]}
role :app, %w{deployer@206.189.102.195}

# Define server(s)
# Example:
# server '[your droplet's IP addr]', user: '[the deployer user]', roles: %w{[role names as defined above]}
# server '162.243.74.190', user: 'deployer', roles: %w{app}
server '206.189.102.195', user: 'deployer' , roles: %w{app}

# SSH Options
# See the example commented out section in the file
# for more options.
set :ssh_options, {
    forward_agent: true,
    user: 'deployer',
}