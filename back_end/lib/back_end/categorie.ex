defmodule BackEnd.Categories.Categorie do
  use Ecto.Schema
  import Ecto.Changeset

  schema "categories" do
    field(:name, :string)
    field(:label, :string)
    field(:isLeaf, :boolean)
    field(:catPropertyModels, {:array, :map})
    field(:rules, :map)
    field(:firstLevelCatId, :integer)
    field(:lscSetId, :integer)
    field(:variationCat, :boolean)
    field(:active, :boolean)

    timestamps()
  end

  def changeset(categorie, attrs) do
    categorie
    |> cast(attrs, [
      :name,
      :label,
      :ifLeaf,
      :catPropertyModels,
      :rules,
      :firstLevelCatId,
      :lscSetId,
      :variationCat,
      :active
    ])
    |> validate_required([
      :name,
      :label
    ])
  end
end
