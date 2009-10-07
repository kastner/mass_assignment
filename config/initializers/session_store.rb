# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hmtme_session',
  :secret      => 'b924c453c148a54a8078c012c99baeb0c0b3ab4857b99ad1656b5fd50438571badaf7ab7d6b4b547641602973014fea3bc8bb7060aaa98f02654944235bff859'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
