dep 'ian bash colors' do
  met? { 
    '/home/ian/.bash_profile'.p.grep(/^PS/) 
  }

  meet { 
    '/home/.bash_profile'.p.append('PS1="\[\033[1;31m\]\u@\h:\w$\[\033[0m\ "')
  }
end
