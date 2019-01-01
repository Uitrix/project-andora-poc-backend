# Since configuration is shared in umbrella projects, this file
# should only configure the :xno application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :xno,
  ecto_repos: [Xno.Repo]

import_config "#{Mix.env()}.exs"
