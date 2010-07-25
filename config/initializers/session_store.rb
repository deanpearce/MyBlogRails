# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_MyBlogOnRails_session',
  :secret      => '9d62510a37cb1f7c70c15a1425bde548f10f6ea66e83741a8c4c0bf93c796d3a5e9f3dac1349900416a895ffd423bc2fbdede01c4a328a10ed81f6403bfed1e3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
