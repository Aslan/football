# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_football_session',
  :secret      => 'd7b2556082ac28e8cd402ecebbc1d83e9d4f718fd0ab4bd7a7f8058db7c80161d77bc00be1f0698a84f1dd0c83b9e40eb24502bdc145bcdac57e9be544e1c045'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
