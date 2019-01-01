defmodule XnoWeb.Router do
  use XnoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", XnoWeb do
    pipe_through :api
  end
end
