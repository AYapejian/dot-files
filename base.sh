export DF_BASE_PATH=~/.dotfiles

source $DF_BASE_PATH/aliases.sh
source $DF_BASE_PATH/bash_colors.sh
source $DF_BASE_PATH/bash_completion.sh
source $DF_BASE_PATH/bash_path.sh
source $DF_BASE_PATH/bash_prompt.sh
source $DF_BASE_PATH/environment_variables.sh
source $DF_BASE_PATH/node_env.sh

# Load some bash functions scripts
source $DF_BASE_PATH/bash-functions/complete-hosts.sh
source $DF_BASE_PATH/bash-functions/misc-functions.sh

########################
### HOST SPECIFIC    ###
########################
#source $DF_BASE_PATH/host-specific/host_specific_shell_opts.sh

# Parse docker environment 
eval $(docker-machine env default)