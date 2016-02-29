class pe_failover::users {

  # Setup PE Users
  $::pe_failover::pe_users.keys.each |$pe_user| {
    user{$pe_user:
      comment    => $::pe_failover::pe_users[$pe_user]['description'],
      home       => $::pe_failover::pe_users[$pe_user]['home'],
      managehome => false,
      shell      => $::pe_failover::pe_users[$pe_user]['shell'],
    }
  }

}
