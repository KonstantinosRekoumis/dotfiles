set fish_greeting
source '/home/kostas/dotfiles/fish/secrets.fish'
alias lss="exa -al --color=always --group-directories-first --git --header --long --icons"
alias treex="exa --tree --level=2 --long --git --icons"

alias enable_oneApi='bass source /opt/intel/oneapi/setvars.sh; bass FC=mpiifx;  bass CC=mpiicx; bass CXX=mpiicx; bass I_MPI_F90=ifx; bass I_MPI_CC=icx; bass I_MPI_CXX=icx'

alias paraview='/home/kostas/repos/paraview_build/bin/paraview'
alias hexpress='/home/kostas/numeca_ssq/bin/hexpress'
#neofetch
alias MaPInco='/home/kostas/repos/MaPFlow/build/MaPInco'
