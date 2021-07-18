defmodule BackEnd.Categories do
  import Ecto.Query

  alias BackEnd.Categories.Categorie
  alias BackEnd.Repo

  def list_categories do
    query = from(categorie in Categorie)
    Repo.all(query)
  end
end
