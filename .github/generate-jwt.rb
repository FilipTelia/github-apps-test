require 'openssl'
require 'jwt'  # https://rubygems.org/gems/jwt

app_id = ARGV[0]

# Read the private key file
private_pem = File.read(".github/private.pem")
private_key = OpenSSL::PKey::RSA.new(private_pem)

# Configure the content of the JWT
payload = {
  # issued at time, 60 seconds in the past to allow for clock drift
iat: Time.now.to_i - 60,
  # JWT expiration time (10 minute maximum)
exp: Time.now.to_i + (10 * 60),
  # GitHub App's identifier
iss: app_id
}

# Generate the JWT
jwt = JWT.encode(payload, private_key, "RS256")
# Print the JWT
puts jwt
