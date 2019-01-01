# Since configuration is shared in umbrella projects, this file
# should only configure the :xno_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :xno_web,
  ecto_repos: [Xno.Repo],
  generators: [context_app: :xno]

# Configures the endpoint
config :xno_web, XnoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "P7CWqY8czva/+7o8uHARXGyTAwI1QyoHYp3RKZuO3eXmpDkwZHoTmU3dwfkKUBXR",
  render_errors: [view: XnoWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: XnoWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
