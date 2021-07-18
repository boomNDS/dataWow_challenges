defmodule BackEnd.Repo.Migrations.Categories do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add(:name, :string)
      add(:label, :string)
      add(:isLeaf, :boolean)
      add(:catPropertyModels, {:array, :json})
      add(:rules, :json)
      add(:firstLevelCatId, :integer)
      add(:lscSetId, :integer)
      add(:variationCat, :boolean)
      add(:active, :boolean)
      timestamps
    end
  end
end
