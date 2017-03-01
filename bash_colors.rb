dep 'bash_colors' do
  met? { 
    '~/.bash_profile'.p.grep(/^PS/) 
  }

  meet { 
    '~/.bash_profile'.p.append('PS1="\[\e[1;36m\]\d \[\e[1;32m\]\t \[\e[1;33m\]\u@\[\e[1;35m\]\h:\w\$\[\e[0;39m\] "')
  }
end
