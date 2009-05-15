# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_second_blog_session',
  :secret      => 'c67fd8f0c647ff260bb6389d3e97c294daad20049597deeed84456e817207b66c54bab379bfd1a537b00545021b4371e32502e0e674dcbb2e1339dfc5c6e21f1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
