dep 'corosync config exists' do
  met? {
    "test -e /etc/corosync/corosync.conf"
    }
  }
  meet {
    # dont know how to interpolate files yet.
    log_shell 'Making config file.', 'touch /etc/corosync/corosync.conf'
  }
end
