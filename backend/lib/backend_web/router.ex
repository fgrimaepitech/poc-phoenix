defmodule BackendWeb.Router do
  use BackendWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BackendWeb do
    pipe_through :api
    get "/", DefaultController, :index
    post "/accounts/create", AccountController, :create
    get "/accounts/:id", AccountController, :show
  end
end
