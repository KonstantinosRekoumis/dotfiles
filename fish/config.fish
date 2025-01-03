set fish_greeting
set EDITOR 'nvim'
set VISUAL 'nvim'
set EDITOR nvim
set VISUAL nvim
source '/home/kostas/repos/dotfiles/fish/secrets.fish'
alias lss="exa -al --color=always --group-directories-first --git --header --long --icons"
alias treex="exa --tree --level=2 --long --git --icons"

alias enable_oneApi='bass source /opt/intel/oneapi/setvars.sh; bass FC=mpiifx;  bass CC=mpiicx; bass CXX=mpiicx; bass I_MPI_F90=ifx; bass I_MPI_CC=icx; bass I_MPI_CXX=icx'

alias paraview='/home/kostas/repos/paraview_build/bin/paraview'
alias hexpress='/home/kostas/numeca_ssq/bin/hexpress'
#neofetch
# MaPFlow Alias for my branch
set mapinco_p '/home/kostas/repos/MaPFlow/build/MaPInco'
alias sMaPInco='$mapinco_p'
alias mMaPInco='mpirun -n 6 $mapinco_p' 
alias flow_h52cgns='/home/kostas/repos/MaPFlow/build/flow_h52cgns'
# Usefull auxiliary alias
set cgns_tools '/home/kostas/repos/CGNS/build/src/tools'
alias cgns_check='$cgns_tools/cgnscheck'
alias imgview='loupe'

#abbr

abbr rsyncc 'rsync -vzah'

alias clion="~/JetBrains/clion-2024.3.1/bin/clion.sh"
alias pstow="~/repos/pstow/pstow.py"
