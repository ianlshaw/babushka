dep 'corosync running' do
  def netstat_cmd
    "netstat -an | grep 5405"
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
