set fish_greeting
#############################################################
# ABBREVIATIONS & ALIAS

# dir up
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

if type -q hx
    abbr --position command --add helix hx
    set -gx VISUAL hx
    set -gx EDITOR hx
end

if type -q nvim
    abbr --position command --add vim nvim
    set -gx VISUAL nvim
    set -gx EDITOR nvim
end


if type -q zoxide
    zoxide init fish | source
    abbr --position command --add cd z
end

set N_CORES '8' 

set __lss exa -al --color=always --group-directories-first --git --header --long --icons
set __tree exa --tree --level=2 --long --git --icons

source '/home/kostas/repos/dotfiles/fish/secrets.fish'
alias lss='$__lss'
abbr lsd $__lss
alias treex='$__tree'
abbr treed $__tree

alias enable_oneApi='bass source /opt/intel/oneapi/setvars.sh; bass FC=mpiifx;  bass CC=mpiicx; bass CXX=mpiicx; bass I_MPI_F90=ifx; bass I_MPI_CC=icx; bass I_MPI_CXX=icx'

alias paraview='/home/kostas/repos/paraview_build/bin/paraview'
alias hexpress='/home/kostas/numeca_ssq/bin/hexpress'
#neofetch
# MaPFlow Alias for my branch
set mapinco_p '/home/kostas/repos/MaPFlow/build/MaPInco'
alias sMaPInco='$mapinco_p'
alias mMaPInco='mpirun -n $N_CORES  $mapinco_p' 
alias flow_h52cgns='/home/kostas/repos/MaPFlow/build/flow_h52cgns'
# Usefull auxiliary alias
set cgns_tools '/home/kostas/repos/CGNS/build/src/tools'
alias cgns_check='$cgns_tools/cgnscheck'
alias imgview='loupe'

#abbr

abbr rsyncc 'rsync -vzah'

alias clion="~/JetBrains/clion-2024.3.1/bin/clion.sh"
alias pstow="~/repos/pstow/pstow.py"

if locate --version 2>/dev/null 1>&2 && type -q fzf
    set WITH_LOCAL_DB ''
    if test -f ~/.locate.db
        set WITH_LOCAL_DB "-d ~/.locate.db"
    end
    abbr --set-cursor=% --add locate "locate $WITH_LOCAL_DB -i '%' | fzf"
    abbr --position command --add updatedb 'updatedb --require-visibility 0 -o ~/.locate.db'
end
