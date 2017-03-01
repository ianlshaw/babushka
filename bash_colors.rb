dep 'bash_colors' do
  met? { 
    '~/.bash_profile'.p.grep(/^PS/) 
  }

  meet { 
    '~/.bash_profile'.p.append('PS1="\[\033[1;31m\]\u@\h:\w$\[\033[0m\ "')
  }
end
