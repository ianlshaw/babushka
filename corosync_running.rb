dep 'corosync running' do
  def netstat_cmd
    "netstat -an | grep '^tcp.*[.:]5504 .*LISTEN'"
  end
  met? {
    shell?(netstat_cmd).tap {|r|
      log "#{r ? 'Some' : 'No'}thing listening."
    }
  }
  meet {
    log_shell 'Starting', 'service corosync start'
  }
end
