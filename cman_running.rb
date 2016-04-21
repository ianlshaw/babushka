dep 'cman running' do
  requires 'corosync running'
  def cman_tool_cmd
    "cman_tool services | grep members"
  end
  met? {
    shell?(cman_tool_cmd).tap {|r|
      log "#{r ? 'Some' : 'No'}cludster members."
    }
  }
  meet {
    log_shell 'Starting', 'service cman start'
  }
end
