defmodule BackEndWeb.CategoriesController do
  use BackEndWeb, :controller

  def list(conn, _params) do
    conn
    |> put_status(:ok)
    |> json(%{})
  end
end
