# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc


alias enable_oneApi='source /opt/intel/oneapi/setvars.sh; FC=mpiifx; CC=mpiicx; CXX=mpiicx; I_MPI_F90=ifx; I_MPI_CC=icx; I_MPI_CXX=icx'
alias ansav24='export ANSA_SRV=36007@pii.naval.ntua.gr; ~/BETA_CAE_Systems/ansa_v24.0.0/ansa64.sh'
alias metav24='export ANSA_SRV=36007@pii.naval.ntua.gr; ~/BETA_CAE_Systems/meta_post_v24.0.0/meta_post64.sh'


