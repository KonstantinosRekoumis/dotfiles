# My custom functions


function git_commitm_date_host --description 'Automated commit message binded to the commit action'

   command git commit -m "$(date  +%y-%m-%dT%H-%M)_$(whoami)@$(hostname)"
    
end


