dep 'pacemaker running' do
  requires 'cman running'
  def pcs_cmd
    "pcs status"
  end
  met? {
    shell?(pcs_cmd).tap {|r|
      log "#{r ? 'Some' : 'No'}thing running."
    }
  }
  meet {
    log_shell 'Starting', 'service pacemaker start'
  }
end
