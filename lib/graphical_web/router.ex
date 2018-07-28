defmodule GraphicalWeb.Router do
  use GraphicalWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GraphicalWeb do
    pipe_through :api
    resources "/users", UserController, expect: [:new, :edit]
  end
end
