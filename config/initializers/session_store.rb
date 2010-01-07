# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Facebook-Connected_session',
  :secret      => '61e9411b83c1bdf0e8cf23788ef34426471badab3fd80ad9c9cd170ec1ac531bab1153d7c333debaf335b7f41bc3f0fef89b64cdaea18f6a2e226abe0abb846e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
