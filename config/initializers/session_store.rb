# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pluto_session',
  :secret      => 'ae43737c9b4a17895f42ca72a3e8f15ed8f16ae19f3d7f5cfd43205c8ecb74dd37e242b8978b0b032a15080417470f99fe19f906c6ab3bac2ca72b90e2b94f83'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
