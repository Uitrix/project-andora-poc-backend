defmodule XnoWeb.Router do
  use XnoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", XnoWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/api", XnoWeb do
    pipe_through :api
  end
end
