import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_api_template, PhoenixApiTemplateWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "0tapagxok4S8O5y0Sf+x8j+QBOxg1sYfeuPVhQUBWAnR5YPAo8JeTSj/UdpG24wa",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
