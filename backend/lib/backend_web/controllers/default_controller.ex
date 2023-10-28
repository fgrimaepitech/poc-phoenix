defmodule BackendWeb.DefaultController do
  use BackendWeb, :controller

  def index(conn, _params) do
    text conn, "The Backend API is up and running in #{Mix.env()} mode."
  end
end
