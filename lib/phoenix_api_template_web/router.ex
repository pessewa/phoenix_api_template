defmodule PhoenixApiTemplateWeb.Router do
  use PhoenixApiTemplateWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenixApiTemplateWeb do
    pipe_through :api
  end
end
