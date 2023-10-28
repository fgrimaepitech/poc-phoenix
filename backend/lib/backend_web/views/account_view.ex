defmodule BackendWeb.AccountView do
  use BackendWeb, :view
  alias BackendWeb.AccountView

  def render("index.json", %{accounts: accounts}) do
    %{data: render_many(accounts, AccountView, "account.json")}
  end

  def render("show.json", %{account: account}) do
    %{
      id: account.id,
      email: account.email,
    }
  end

  def render("account.json", %{account: account}) do
    %{id: account.id,
      email: account.email,
      hash_password: account.hash_password}
  end

  def render("account_token.json", %{account: account, token: token}) do
    %{
      id: account.id,
      email: account.email,
      token: token
    }
  end
end
